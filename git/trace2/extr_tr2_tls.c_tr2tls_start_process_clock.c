
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getnanotime () ;
 int tr2tls_us_start_process ;

void tr2tls_start_process_clock(void)
{
 if (tr2tls_us_start_process)
  return;







 tr2tls_us_start_process = getnanotime() / 1000;
}
