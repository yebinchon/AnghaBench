
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


typedef int uint8_t ;
struct st_h2o_hpack_header_table_entry_t {char* err_desc; TYPE_2__* value; TYPE_2__* name; } ;
typedef scalar_t__ int64_t ;
struct TYPE_17__ {int buf; } ;
typedef TYPE_1__ h2o_token_t ;
typedef int h2o_mem_pool_t ;
struct TYPE_18__ {scalar_t__ len; int base; } ;
typedef TYPE_2__ h2o_iovec_t ;
struct TYPE_19__ {scalar_t__ hpack_max_capacity; size_t hpack_capacity; scalar_t__ num_entries; size_t hpack_size; } ;
typedef TYPE_3__ h2o_hpack_header_table_t ;
struct TYPE_16__ {int value; scalar_t__ name; } ;


 int H2O_HTTP2_ERROR_COMPRESSION ;
 int H2O_HTTP2_ERROR_INVALID_HEADER_CHAR ;
 int H2O_HTTP2_ERROR_PROTOCOL ;
 scalar_t__ HEADER_TABLE_ENTRY_SIZE_OFFSET ;
 scalar_t__ HEADER_TABLE_OFFSET ;
 int SIZE_MAX ;
 TYPE_2__* decode_string (int *,int const** const,int const*,int,char const**) ;
 scalar_t__ h2o_hpack_decode_int (int const** const,int const*,int) ;
 char const* h2o_hpack_err_found_upper_case_in_header_name ;
 struct st_h2o_hpack_header_table_entry_t* h2o_hpack_header_table_get (TYPE_3__*,scalar_t__) ;
 TYPE_11__* h2o_hpack_static_table ;
 int h2o_iovec_is_token (TYPE_2__*) ;
 TYPE_1__* h2o_lookup_token (int ,scalar_t__) ;
 int h2o_mem_addref_shared (TYPE_2__*) ;
 int h2o_mem_link_shared (int *,TYPE_2__*) ;
 struct st_h2o_hpack_header_table_entry_t* header_table_add (TYPE_3__*,scalar_t__,int ) ;
 int header_table_evict_one (TYPE_3__*) ;
 int value_is_part_of_static_table (TYPE_2__*) ;

int h2o_hpack_decode_header(h2o_mem_pool_t *pool, void *_hpack_header_table, h2o_iovec_t **_name, h2o_iovec_t *_value,
                            const uint8_t **const src, const uint8_t *src_end, const char **err_desc)
{
    h2o_hpack_header_table_t *hpack_header_table = _hpack_header_table;
    h2o_iovec_t *name = ((void*)0), *value = ((void*)0);
    int64_t index = 0;
    int value_is_indexed = 0, do_index = 0;

Redo:
    if (*src >= src_end)
        return H2O_HTTP2_ERROR_COMPRESSION;


    if (**src >= 128) {

        if ((index = h2o_hpack_decode_int(src, src_end, 7)) <= 0)
            return H2O_HTTP2_ERROR_COMPRESSION;
        value_is_indexed = 1;
    } else if (**src >= 64) {

        if (**src == 64) {
            ++*src;
        } else if ((index = h2o_hpack_decode_int(src, src_end, 6)) <= 0) {
            return H2O_HTTP2_ERROR_COMPRESSION;
        }
        do_index = 1;
    } else if (**src < 32) {

        if ((**src & 0xf) == 0) {
            ++*src;
        } else if ((index = h2o_hpack_decode_int(src, src_end, 4)) <= 0) {
            return H2O_HTTP2_ERROR_COMPRESSION;
        }
    } else {

        int64_t new_capacity;
        if ((new_capacity = h2o_hpack_decode_int(src, src_end, 5)) < 0) {
            return H2O_HTTP2_ERROR_COMPRESSION;
        }
        if (new_capacity > hpack_header_table->hpack_max_capacity) {
            return H2O_HTTP2_ERROR_COMPRESSION;
        }
        hpack_header_table->hpack_capacity = (size_t)new_capacity;
        while (hpack_header_table->num_entries != 0 && hpack_header_table->hpack_size > hpack_header_table->hpack_capacity) {
            header_table_evict_one(hpack_header_table);
        }
        goto Redo;
    }


    if (index > 0) {

        if (index < HEADER_TABLE_OFFSET) {
            name = (h2o_iovec_t *)h2o_hpack_static_table[index - 1].name;
            if (value_is_indexed)
                value = (h2o_iovec_t *)&h2o_hpack_static_table[index - 1].value;
        } else if (index - HEADER_TABLE_OFFSET < hpack_header_table->num_entries) {
            struct st_h2o_hpack_header_table_entry_t *entry =
                h2o_hpack_header_table_get(hpack_header_table, index - HEADER_TABLE_OFFSET);
            *err_desc = entry->err_desc;
            name = entry->name;
            if (!h2o_iovec_is_token(name))
                h2o_mem_link_shared(pool, name);
            if (value_is_indexed) {
                value = entry->value;
                h2o_mem_link_shared(pool, value);
            }
        } else {
            return H2O_HTTP2_ERROR_COMPRESSION;
        }
    } else {

        const h2o_token_t *name_token;
        if ((name = decode_string(pool, src, src_end, 1, err_desc)) == ((void*)0)) {
            if (*err_desc == h2o_hpack_err_found_upper_case_in_header_name)
                return H2O_HTTP2_ERROR_PROTOCOL;
            return H2O_HTTP2_ERROR_COMPRESSION;
        }
        if (*err_desc == ((void*)0)) {

            if ((name_token = h2o_lookup_token(name->base, name->len)) != ((void*)0))
                name = (h2o_iovec_t *)&name_token->buf;
        }
    }


    if (!value_is_indexed) {
        if ((value = decode_string(pool, src, src_end, 0, err_desc)) == ((void*)0))
            return H2O_HTTP2_ERROR_COMPRESSION;
    }


    if (do_index) {
        struct st_h2o_hpack_header_table_entry_t *entry =
            header_table_add(hpack_header_table, name->len + value->len + HEADER_TABLE_ENTRY_SIZE_OFFSET, SIZE_MAX);
        if (entry != ((void*)0)) {
            entry->err_desc = *err_desc;
            entry->name = name;
            if (!h2o_iovec_is_token(entry->name))
                h2o_mem_addref_shared(entry->name);
            entry->value = value;
            if (!value_is_part_of_static_table(entry->value))
                h2o_mem_addref_shared(entry->value);
        }
    }

    *_name = name;
    *_value = *value;
    return *err_desc != ((void*)0) ? H2O_HTTP2_ERROR_INVALID_HEADER_CHAR : 0;
}
