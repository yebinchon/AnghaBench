
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int input_canceled ;

void
ctrl_c_handler(int signo)
{
  input_canceled = 1;
}
