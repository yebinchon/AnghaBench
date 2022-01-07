
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_10__ {int buf; } ;
typedef TYPE_1__ h2o_token_t ;
typedef int h2o_mem_pool_t ;
struct TYPE_11__ {size_t size; TYPE_3__* entries; } ;
typedef TYPE_2__ h2o_headers_t ;
struct TYPE_13__ {int len; int base; } ;
struct TYPE_12__ {TYPE_6__ value; int * name; } ;
typedef TYPE_3__ h2o_header_t ;


 int H2O_STRLIT (char*) ;
 int h2o_add_header (int *,TYPE_2__*,TYPE_1__ const*,int *,char const*,size_t) ;
 TYPE_6__ h2o_concat (int *,TYPE_6__,int ,int ) ;
 scalar_t__ h2o_contains_token (int ,int ,char const*,size_t,char) ;
 int h2o_iovec_init (char const*,...) ;

ssize_t h2o_set_header_token(h2o_mem_pool_t *pool, h2o_headers_t *headers, const h2o_token_t *token, const char *value,
                             size_t value_len)
{
    ssize_t found = -1;
    size_t i;
    for (i = 0; i != headers->size; ++i) {
        if (headers->entries[i].name == &token->buf) {
            if (h2o_contains_token(headers->entries[i].value.base, headers->entries[i].value.len, value, value_len, ','))
                return -1;
            found = i;
        }
    }
    if (found != -1) {
        h2o_header_t *dest = headers->entries + found;
        dest->value = h2o_concat(pool, dest->value, h2o_iovec_init(H2O_STRLIT(", ")), h2o_iovec_init(value, value_len));
        return found;
    } else {
        return h2o_add_header(pool, headers, token, ((void*)0), value, value_len);
    }
}
