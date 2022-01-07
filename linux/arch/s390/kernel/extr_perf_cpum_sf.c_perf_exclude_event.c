
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct perf_sf_sde_regs {scalar_t__ in_guest; } ;
struct TYPE_2__ {scalar_t__ exclude_host; scalar_t__ exclude_guest; scalar_t__ exclude_kernel; scalar_t__ exclude_user; } ;
struct perf_event {TYPE_1__ attr; } ;


 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int perf_exclude_event(struct perf_event *event, struct pt_regs *regs,
         struct perf_sf_sde_regs *sde_regs)
{
 if (event->attr.exclude_user && user_mode(regs))
  return 1;
 if (event->attr.exclude_kernel && !user_mode(regs))
  return 1;
 if (event->attr.exclude_guest && sde_regs->in_guest)
  return 1;
 if (event->attr.exclude_host && !sde_regs->in_guest)
  return 1;
 return 0;
}
