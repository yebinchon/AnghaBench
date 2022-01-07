
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_recursive_mutex (int *) ;
 int pthread_key_create (int *,int *) ;
 int tr2tls_create_self (char*,int ) ;
 int tr2tls_key ;
 int tr2tls_mutex ;
 int tr2tls_start_process_clock () ;
 int tr2tls_thread_main ;
 int tr2tls_us_start_process ;

void tr2tls_init(void)
{
 tr2tls_start_process_clock();

 pthread_key_create(&tr2tls_key, ((void*)0));
 init_recursive_mutex(&tr2tls_mutex);

 tr2tls_thread_main =
  tr2tls_create_self("main", tr2tls_us_start_process);
}
