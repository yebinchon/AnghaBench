
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int tr2tls_thread_main ;
 scalar_t__ tr2tls_us_start_process ;

uint64_t tr2tls_absolute_elapsed(uint64_t us)
{
 if (!tr2tls_thread_main)
  return 0;

 return us - tr2tls_us_start_process;
}
