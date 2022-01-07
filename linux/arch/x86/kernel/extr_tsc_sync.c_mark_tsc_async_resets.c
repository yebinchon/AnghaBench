
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*,char*) ;
 int tsc_async_resets ;

void mark_tsc_async_resets(char *reason)
{
 if (tsc_async_resets)
  return;
 tsc_async_resets = 1;
 pr_info("tsc: Marking TSC async resets true due to %s\n", reason);
}
