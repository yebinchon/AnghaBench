
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct intel_uncore_box {TYPE_1__** event_list; struct event_constraint** event_constraint; } ;
struct hw_perf_event {int idx; } ;
struct event_constraint {unsigned long* idxmsk; int weight; } ;
struct TYPE_3__ {struct hw_perf_event hw; } ;


 int BITS_TO_LONGS (int) ;
 int EINVAL ;
 int UNCORE_PMC_IDX_MAX ;
 int __set_bit (int,unsigned long*) ;
 int bitmap_zero (unsigned long*,int) ;
 int max (int,int ) ;
 int min (int,int ) ;
 int perf_assign_events (struct event_constraint**,int,int,int,int,int*) ;
 scalar_t__ test_bit (int,unsigned long*) ;
 struct event_constraint* uncore_get_event_constraint (struct intel_uncore_box*,TYPE_1__*) ;
 int uncore_put_event_constraint (struct intel_uncore_box*,TYPE_1__*) ;

__attribute__((used)) static int uncore_assign_events(struct intel_uncore_box *box, int assign[], int n)
{
 unsigned long used_mask[BITS_TO_LONGS(UNCORE_PMC_IDX_MAX)];
 struct event_constraint *c;
 int i, wmin, wmax, ret = 0;
 struct hw_perf_event *hwc;

 bitmap_zero(used_mask, UNCORE_PMC_IDX_MAX);

 for (i = 0, wmin = UNCORE_PMC_IDX_MAX, wmax = 0; i < n; i++) {
  c = uncore_get_event_constraint(box, box->event_list[i]);
  box->event_constraint[i] = c;
  wmin = min(wmin, c->weight);
  wmax = max(wmax, c->weight);
 }


 for (i = 0; i < n; i++) {
  hwc = &box->event_list[i]->hw;
  c = box->event_constraint[i];


  if (hwc->idx == -1)
   break;


  if (!test_bit(hwc->idx, c->idxmsk))
   break;


  if (test_bit(hwc->idx, used_mask))
   break;

  __set_bit(hwc->idx, used_mask);
  if (assign)
   assign[i] = hwc->idx;
 }

 if (i != n)
  ret = perf_assign_events(box->event_constraint, n,
      wmin, wmax, n, assign);

 if (!assign || ret) {
  for (i = 0; i < n; i++)
   uncore_put_event_constraint(box, box->event_list[i]);
 }
 return ret ? -EINVAL : 0;
}
