
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; char* base; } ;
typedef TYPE_1__ h2o_iovec_t ;
typedef int alphanum ;


 int h2o_rand () ;

__attribute__((used)) static void gen_rand_string(h2o_iovec_t *s)
{
    int i;
    static const char alphanum[] = "0123456789"
                                   "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                   "abcdefghijklmnopqrstuvwxyz";

    for (i = 0; i < s->len; ++i) {
        s->base[i] = alphanum[h2o_rand() % (sizeof(alphanum) - 1)];
    }

    s->base[s->len] = 0;
}
