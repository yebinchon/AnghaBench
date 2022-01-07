
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ONCE (int,char*) ;
 scalar_t__ boot_cpu_done ;
 int pat_disabled ;
 int pr_info (char*,char const*) ;

void pat_disable(const char *reason)
{
 if (pat_disabled)
  return;

 if (boot_cpu_done) {
  WARN_ONCE(1, "x86/PAT: PAT cannot be disabled after initialization\n");
  return;
 }

 pat_disabled = 1;
 pr_info("x86/PAT: %s\n", reason);
}
