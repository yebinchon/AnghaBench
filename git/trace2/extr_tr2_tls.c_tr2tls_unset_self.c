
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr2tls_thread_ctx {struct tr2tls_thread_ctx* array_us_start; } ;


 int free (struct tr2tls_thread_ctx*) ;
 int pthread_setspecific (int ,int *) ;
 struct tr2tls_thread_ctx* tr2tls_get_self () ;
 int tr2tls_key ;

void tr2tls_unset_self(void)
{
 struct tr2tls_thread_ctx *ctx;

 ctx = tr2tls_get_self();

 pthread_setspecific(tr2tls_key, ((void*)0));

 free(ctx->array_us_start);
 free(ctx);
}
