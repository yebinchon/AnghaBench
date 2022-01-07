
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct intel_uncore_box {int dummy; } ;
struct event_constraint {int dummy; } ;


 struct event_constraint* __snbep_cbox_get_constraint (struct intel_uncore_box*,struct perf_event*,int ) ;
 int snbep_cbox_filter_mask ;

__attribute__((used)) static struct event_constraint *
snbep_cbox_get_constraint(struct intel_uncore_box *box, struct perf_event *event)
{
 return __snbep_cbox_get_constraint(box, event, snbep_cbox_filter_mask);
}
