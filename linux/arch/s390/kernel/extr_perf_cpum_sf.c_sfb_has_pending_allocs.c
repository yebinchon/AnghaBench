
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sf_buffer {int dummy; } ;
struct hw_perf_event {int dummy; } ;


 scalar_t__ sfb_pending_allocs (struct sf_buffer*,struct hw_perf_event*) ;

__attribute__((used)) static int sfb_has_pending_allocs(struct sf_buffer *sfb,
       struct hw_perf_event *hwc)
{
 return sfb_pending_allocs(sfb, hwc) > 0;
}
