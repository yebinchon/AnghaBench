
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr2tls_thread_ctx {int dummy; } ;


 int HAVE_THREADS ;
 int getnanotime () ;
 struct tr2tls_thread_ctx* pthread_getspecific (int ) ;
 struct tr2tls_thread_ctx* tr2tls_create_self (char*,int) ;
 int tr2tls_key ;
 struct tr2tls_thread_ctx* tr2tls_thread_main ;

struct tr2tls_thread_ctx *tr2tls_get_self(void)
{
 struct tr2tls_thread_ctx *ctx;

 if (!HAVE_THREADS)
  return tr2tls_thread_main;

 ctx = pthread_getspecific(tr2tls_key);






 if (!ctx)
  ctx = tr2tls_create_self("unknown", getnanotime() / 1000);

 return ctx;
}
