
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HAVE_THREADS ;
 scalar_t__ pthread_getspecific (int ) ;
 int tr2tls_key ;
 scalar_t__ tr2tls_thread_main ;

int tr2tls_is_main_thread(void)
{
 if (!HAVE_THREADS)
  return 1;

 return pthread_getspecific(tr2tls_key) == tr2tls_thread_main;
}
