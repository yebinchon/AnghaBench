
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IjkThreadPoolContext ;


 int ijk_threadpool_free (int *) ;

__attribute__((used)) static int ijk_threadpool_freep(IjkThreadPoolContext **ctx)
{
    int ret = 0;

    if (!ctx || !*ctx)
        return -1;

    ret = ijk_threadpool_free(*ctx);
    *ctx = ((void*)0);
    return ret;
}
