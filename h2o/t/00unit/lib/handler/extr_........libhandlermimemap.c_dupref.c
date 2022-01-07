
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; int base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int h2o_mem_alloc_shared (int *,scalar_t__,int *) ;
 int memcpy (int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static h2o_iovec_t dupref(const char *s)
{
    h2o_iovec_t ret;
    ret.len = strlen(s);
    ret.base = h2o_mem_alloc_shared(((void*)0), ret.len + 1, ((void*)0));
    memcpy(ret.base, s, ret.len + 1);
    return ret;
}
