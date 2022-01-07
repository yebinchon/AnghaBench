
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_6__ {scalar_t__ size; TYPE_3__* entries; } ;
typedef TYPE_2__ h2o_headers_t ;
struct TYPE_7__ {TYPE_1__* name; } ;
typedef TYPE_3__ h2o_header_t ;
struct TYPE_5__ {int len; int base; } ;


 scalar_t__ h2o_memis (int ,int ,char const*,size_t) ;

ssize_t h2o_find_header_by_str(const h2o_headers_t *headers, const char *name, size_t name_len, ssize_t cursor)
{
    for (++cursor; cursor < headers->size; ++cursor) {
        h2o_header_t *t = headers->entries + cursor;
        if (h2o_memis(t->name->base, t->name->len, name, name_len)) {
            return cursor;
        }
    }
    return -1;
}
