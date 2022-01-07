
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_memcached_context_t ;


 int reader_main (int *) ;

__attribute__((used)) static void *thread_main(void *_ctx)
{
    h2o_memcached_context_t *ctx = _ctx;

    while (1)
        reader_main(ctx);
    return ((void*)0);
}
