
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ssize_t ;
typedef int h2o_token_t ;
typedef int h2o_mem_pool_t ;
struct TYPE_7__ {TYPE_1__* entries; } ;
typedef TYPE_2__ h2o_headers_t ;
struct TYPE_6__ {int value; } ;


 int h2o_add_header (int *,TYPE_2__*,int const*,int *,char const*,size_t) ;
 int h2o_find_header (TYPE_2__*,int const*,int) ;
 int h2o_iovec_init (char const*,size_t) ;

ssize_t h2o_set_header(h2o_mem_pool_t *pool, h2o_headers_t *headers, const h2o_token_t *token, const char *value, size_t value_len,
                       int overwrite_if_exists)
{
    ssize_t cursor = h2o_find_header(headers, token, -1);
    if (cursor != -1) {
        if (overwrite_if_exists) {
            headers->entries[cursor].value = h2o_iovec_init(value, value_len);
        }
        return cursor;
    } else {
        return h2o_add_header(pool, headers, token, ((void*)0), value, value_len);
    }
}
