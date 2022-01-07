
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long ip; } ;


 scalar_t__ __begin_SYSENTER_singlestep_region ;
 scalar_t__ __end_SYSENTER_singlestep_region ;
 scalar_t__ __end_entry_SYSENTER_compat ;
 scalar_t__ entry_SYSENTER_compat ;

__attribute__((used)) static bool is_sysenter_singlestep(struct pt_regs *regs)
{
 return 0;

}
