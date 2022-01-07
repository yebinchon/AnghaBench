
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int h2o_mem_pool_t ;
struct TYPE_3__ {char* base; size_t len; } ;
typedef TYPE_1__ h2o_iovec_t ;


 size_t SIZE_MAX ;
 char* h2o_mem_alloc_shared (int *,size_t,int *) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

h2o_iovec_t h2o_strdup_shared(h2o_mem_pool_t *pool, const char *s, size_t slen)
{
    h2o_iovec_t ret;

    if (slen == SIZE_MAX)
        slen = strlen(s);

    ret.base = h2o_mem_alloc_shared(pool, slen + 1, ((void*)0));
    memcpy(ret.base, s, slen);
    ret.base[slen] = '\0';
    ret.len = slen;
    return ret;
}
