#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct st_h2o_hpack_header_table_entry_t {TYPE_2__* value; TYPE_4__ const* name; } ;
struct TYPE_11__ {int http2_static_table_name_index; int dont_compress; } ;
struct TYPE_13__ {TYPE_1__ flags; } ;
typedef  TYPE_3__ h2o_token_t ;
struct TYPE_14__ {char* base; int len; } ;
typedef  TYPE_4__ const h2o_iovec_t ;
struct TYPE_15__ {size_t entry_start_index; size_t num_entries; size_t entry_capacity; struct st_h2o_hpack_header_table_entry_t* entries; } ;
typedef  TYPE_5__ h2o_hpack_header_table_t ;
struct TYPE_12__ {char* base; size_t len; } ;

/* Variables and functions */
 int HEADER_TABLE_ENTRY_SIZE_OFFSET ; 
 size_t HEADER_TABLE_OFFSET ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,char*,int) ; 
 int* FUNC2 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,char*,int) ; 
 int FUNC4 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,size_t) ; 
 struct st_h2o_hpack_header_table_entry_t* FUNC6 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 

__attribute__((used)) static uint8_t *FUNC8(h2o_hpack_header_table_t *header_table, uint8_t *dst, const h2o_iovec_t *name,
                                 const h2o_iovec_t *value, int dont_compress)
{
    int is_token = FUNC4(name);
    int name_index = is_token ? ((const h2o_token_t *)name)->flags.http2_static_table_name_index : 0;

    /* try to send as indexed */
    {
        size_t header_table_index = header_table->entry_start_index, n;
        for (n = header_table->num_entries; n != 0; --n) {
            struct st_h2o_hpack_header_table_entry_t *entry = header_table->entries + header_table_index;
            if (is_token) {
                if (name != entry->name)
                    goto Next;
            } else {
                if (!FUNC5(name->base, name->len, entry->name->base, entry->name->len))
                    goto Next;
                if (name_index == 0)
                    name_index = (int)(header_table->num_entries - n + HEADER_TABLE_OFFSET);
            }
            /* name matched! */
            if (!FUNC5(value->base, value->len, entry->value->base, entry->value->len))
                goto Next;
            /* name and value matched! */
            *dst = 0x80;
            dst = FUNC2(dst, header_table->num_entries - n + HEADER_TABLE_OFFSET, 7);
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
        /* literal header field with indexing (indexed name). */
        if (dont_compress == 1) {
            /* mark the field as 'never indexed' */
            *dst = 0x10;
            dst = FUNC2(dst, name_index, 4);
        } else {
            *dst = 0x40;
            dst = FUNC2(dst, name_index, 6);
        }
    } else {
        /* literal header field with indexing (new name) */
        *dst++ = 0x40;
        dst += FUNC3(dst, name->base, name->len);
    }
    if (dont_compress == 1) {
        /* bypass huffman encoding */
        dst += FUNC1(dst, value->base, value->len);
    } else {
        /* add to header table (maximum number of entries in output header table is limited to 32 so that the search (see above)
           would
           not take too long) */
        dst += FUNC3(dst, value->base, value->len);
        struct st_h2o_hpack_header_table_entry_t *entry =
            FUNC6(header_table, name->len + value->len + HEADER_TABLE_ENTRY_SIZE_OFFSET, 32);
        if (entry != NULL) {
            if (is_token) {
                entry->name = (h2o_iovec_t *)name;
            } else {
                entry->name = FUNC0(NULL, name->len);
                entry->name->base[name->len] = '\0';
                FUNC7(entry->name->base, name->base, name->len);
            }
            entry->value = FUNC0(NULL, value->len);
            entry->value->base[value->len] = '\0';
            FUNC7(entry->value->base, value->base, value->len);
        }
    }

    return dst;
}