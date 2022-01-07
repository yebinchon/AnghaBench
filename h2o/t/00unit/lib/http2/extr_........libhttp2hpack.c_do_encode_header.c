
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct st_h2o_hpack_header_table_entry_t {TYPE_2__* value; TYPE_4__ const* name; } ;
struct TYPE_11__ {int http2_static_table_name_index; int dont_compress; } ;
struct TYPE_13__ {TYPE_1__ flags; } ;
typedef TYPE_3__ h2o_token_t ;
struct TYPE_14__ {char* base; int len; } ;
typedef TYPE_4__ const h2o_iovec_t ;
struct TYPE_15__ {size_t entry_start_index; size_t num_entries; size_t entry_capacity; struct st_h2o_hpack_header_table_entry_t* entries; } ;
typedef TYPE_5__ h2o_hpack_header_table_t ;
struct TYPE_12__ {char* base; size_t len; } ;


 int HEADER_TABLE_ENTRY_SIZE_OFFSET ;
 size_t HEADER_TABLE_OFFSET ;
 void* alloc_buf (int *,int) ;
 int encode_as_is (int*,char*,int) ;
 int* h2o_hpack_encode_int (int*,int,int) ;
 int h2o_hpack_encode_string (int*,char*,int) ;
 int h2o_iovec_is_token (TYPE_4__ const*) ;
 int h2o_memis (char*,int,char*,size_t) ;
 struct st_h2o_hpack_header_table_entry_t* header_table_add (TYPE_5__*,int,int) ;
 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static uint8_t *do_encode_header(h2o_hpack_header_table_t *header_table, uint8_t *dst, const h2o_iovec_t *name,
                                 const h2o_iovec_t *value, int dont_compress)
{
    int is_token = h2o_iovec_is_token(name);
    int name_index = is_token ? ((const h2o_token_t *)name)->flags.http2_static_table_name_index : 0;


    {
        size_t header_table_index = header_table->entry_start_index, n;
        for (n = header_table->num_entries; n != 0; --n) {
            struct st_h2o_hpack_header_table_entry_t *entry = header_table->entries + header_table_index;
            if (is_token) {
                if (name != entry->name)
                    goto Next;
            } else {
                if (!h2o_memis(name->base, name->len, entry->name->base, entry->name->len))
                    goto Next;
                if (name_index == 0)
                    name_index = (int)(header_table->num_entries - n + HEADER_TABLE_OFFSET);
            }

            if (!h2o_memis(value->base, value->len, entry->value->base, entry->value->len))
                goto Next;

            *dst = 0x80;
            dst = h2o_hpack_encode_int(dst, header_table->num_entries - n + HEADER_TABLE_OFFSET, 7);
            return dst;
        Next:
            ++header_table_index;
            if (header_table_index == header_table->entry_capacity)
                header_table_index = 0;
        }
    }

    if (!dont_compress && is_token)
        dont_compress = ((const h2o_token_t *)name)->flags.dont_compress;
    if (dont_compress)
        dont_compress = value->len < 20;

    if (name_index != 0) {

        if (dont_compress == 1) {

            *dst = 0x10;
            dst = h2o_hpack_encode_int(dst, name_index, 4);
        } else {
            *dst = 0x40;
            dst = h2o_hpack_encode_int(dst, name_index, 6);
        }
    } else {

        *dst++ = 0x40;
        dst += h2o_hpack_encode_string(dst, name->base, name->len);
    }
    if (dont_compress == 1) {

        dst += encode_as_is(dst, value->base, value->len);
    } else {



        dst += h2o_hpack_encode_string(dst, value->base, value->len);
        struct st_h2o_hpack_header_table_entry_t *entry =
            header_table_add(header_table, name->len + value->len + HEADER_TABLE_ENTRY_SIZE_OFFSET, 32);
        if (entry != ((void*)0)) {
            if (is_token) {
                entry->name = (h2o_iovec_t *)name;
            } else {
                entry->name = alloc_buf(((void*)0), name->len);
                entry->name->base[name->len] = '\0';
                memcpy(entry->name->base, name->base, name->len);
            }
            entry->value = alloc_buf(((void*)0), value->len);
            entry->value->base[value->len] = '\0';
            memcpy(entry->value->base, value->base, value->len);
        }
    }

    return dst;
}
