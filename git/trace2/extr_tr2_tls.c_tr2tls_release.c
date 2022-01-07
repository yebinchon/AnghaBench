
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_key_delete (int ) ;
 int pthread_mutex_destroy (int *) ;
 int tr2tls_key ;
 int tr2tls_mutex ;
 int * tr2tls_thread_main ;
 int tr2tls_unset_self () ;

void tr2tls_release(void)
{
 tr2tls_unset_self();
 tr2tls_thread_main = ((void*)0);

 pthread_mutex_destroy(&tr2tls_mutex);
 pthread_key_delete(tr2tls_key);
}
