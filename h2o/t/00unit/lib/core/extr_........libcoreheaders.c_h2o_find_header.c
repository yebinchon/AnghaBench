
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_7__ {int buf; } ;
typedef TYPE_2__ h2o_token_t ;
struct TYPE_8__ {size_t size; TYPE_1__* entries; } ;
typedef TYPE_3__ h2o_headers_t ;
struct TYPE_6__ {int * name; } ;



ssize_t h2o_find_header(const h2o_headers_t *headers, const h2o_token_t *token, ssize_t cursor)
{
    for (++cursor; cursor < headers->size; ++cursor) {
        if (headers->entries[cursor].name == &token->buf) {
            return cursor;
        }
    }
    return -1;
}
