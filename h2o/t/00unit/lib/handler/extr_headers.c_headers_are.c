
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int h2o_mem_pool_t ;
struct TYPE_8__ {int len; int base; int * member_0; } ;
typedef TYPE_2__ h2o_iovec_t ;
struct TYPE_9__ {size_t size; TYPE_1__* entries; } ;
typedef TYPE_3__ h2o_headers_t ;
struct TYPE_7__ {int value; int * name; } ;


 int H2O_STRLIT (char*) ;
 TYPE_2__ h2o_concat (int *,TYPE_2__,int ,int ,int ,int ) ;
 int h2o_iovec_init (int ) ;
 int h2o_memis (int ,int ,char const*,size_t) ;

__attribute__((used)) static int headers_are(h2o_mem_pool_t *pool, h2o_headers_t *headers, const char *s, size_t len)
{
    size_t i;
    h2o_iovec_t flattened = {((void*)0)};

    for (i = 0; i != headers->size; ++i) {
        flattened = h2o_concat(pool, flattened, *headers->entries[i].name, h2o_iovec_init(H2O_STRLIT(": ")),
                               headers->entries[i].value, h2o_iovec_init(H2O_STRLIT("\n")));
    }

    return h2o_memis(flattened.base, flattened.len, s, len);
}
