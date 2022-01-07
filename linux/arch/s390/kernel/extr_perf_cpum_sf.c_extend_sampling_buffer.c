
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sf_buffer {unsigned long num_sdb; } ;
struct hw_perf_event {int dummy; } ;


 int GFP_ATOMIC ;
 int debug_sprintf_event (int ,int,char*,unsigned long,...) ;
 int realloc_sampling_buffer (struct sf_buffer*,unsigned long,int ) ;
 int sf_disable () ;
 scalar_t__ sfb_has_pending_allocs (struct sf_buffer*,struct hw_perf_event*) ;
 unsigned long sfb_pending_allocs (struct sf_buffer*,struct hw_perf_event*) ;
 int sfdbg ;

__attribute__((used)) static void extend_sampling_buffer(struct sf_buffer *sfb,
       struct hw_perf_event *hwc)
{
 unsigned long num, num_old;
 int rc;

 num = sfb_pending_allocs(sfb, hwc);
 if (!num)
  return;
 num_old = sfb->num_sdb;




 sf_disable();






 rc = realloc_sampling_buffer(sfb, num, GFP_ATOMIC);
 if (rc)
  debug_sprintf_event(sfdbg, 5, "sfb: extend: realloc "
        "failed with rc=%i\n", rc);

 if (sfb_has_pending_allocs(sfb, hwc))
  debug_sprintf_event(sfdbg, 5, "sfb: extend: "
        "req=%lu alloc=%lu remaining=%lu\n",
        num, sfb->num_sdb - num_old,
        sfb_pending_allocs(sfb, hwc));
}
