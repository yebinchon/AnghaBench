
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; char* base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 char const h2o_toupper (char const) ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static int envname_is_headername(const h2o_iovec_t *env, const h2o_iovec_t *header)
{
    const char *ep, *hp, *hend;

    if (env->len != 5 + header->len)
        return 0;
    if (memcmp(env->base, "HTTP_", 5) != 0)
        return 0;
    for (ep = env->base + 5, hp = header->base, hend = hp + header->len; hp < hend; ++ep, ++hp)
        if (*ep != h2o_toupper(*hp))
            return 0;
    return 1;
}
