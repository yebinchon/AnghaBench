
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int PR_TSC_ENABLE ;
 unsigned int PR_TSC_SIGSEGV ;
 int disable_TSC () ;
 int enable_TSC () ;

int set_tsc_mode(unsigned int val)
{
 if (val == PR_TSC_SIGSEGV)
  disable_TSC();
 else if (val == PR_TSC_ENABLE)
  enable_TSC();
 else
  return -EINVAL;

 return 0;
}
