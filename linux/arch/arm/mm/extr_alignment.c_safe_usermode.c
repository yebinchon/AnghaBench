
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UM_FIXUP ;
 int UM_SIGNAL ;
 scalar_t__ cpu_is_v6_unaligned () ;
 int pr_warn (char*) ;

__attribute__((used)) static int safe_usermode(int new_usermode, bool warn)
{
 if (cpu_is_v6_unaligned() && !(new_usermode & (UM_FIXUP | UM_SIGNAL))) {
  new_usermode |= UM_FIXUP;

  if (warn)
   pr_warn("alignment: ignoring faults is unsafe on this CPU.  Defaulting to fixup mode.\n");
 }

 return new_usermode;
}
