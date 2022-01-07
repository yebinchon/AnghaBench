
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__ exclude_kernel; } ;
struct perf_event {int destroy; TYPE_1__ attr; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int EBUSY ;
 int ENOENT ;
 int bts_event_destroy ;
 TYPE_2__ bts_pmu ;
 int capable (int ) ;
 scalar_t__ perf_paranoid_kernel () ;
 scalar_t__ x86_add_exclusive (int ) ;
 int x86_del_exclusive (int ) ;
 int x86_lbr_exclusive_bts ;
 int x86_reserve_hardware () ;

__attribute__((used)) static int bts_event_init(struct perf_event *event)
{
 int ret;

 if (event->attr.type != bts_pmu.type)
  return -ENOENT;
 if (event->attr.exclude_kernel && perf_paranoid_kernel() &&
     !capable(CAP_SYS_ADMIN))
  return -EACCES;

 if (x86_add_exclusive(x86_lbr_exclusive_bts))
  return -EBUSY;

 ret = x86_reserve_hardware();
 if (ret) {
  x86_del_exclusive(x86_lbr_exclusive_bts);
  return ret;
 }

 event->destroy = bts_event_destroy;

 return 0;
}
