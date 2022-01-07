
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGALRM ;
 int set_handler (int ) ;

void timer_set_signal_handler(void)
{
 set_handler(SIGALRM);
}
