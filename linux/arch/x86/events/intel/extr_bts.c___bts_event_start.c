
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int exclude_user; int exclude_kernel; } ;
struct perf_event {TYPE_1__ attr; } ;
struct bts_ctx {int state; int handle; } ;
struct bts_buffer {int snapshot; } ;


 int ARCH_PERFMON_EVENTSEL_INT ;
 int ARCH_PERFMON_EVENTSEL_OS ;
 int ARCH_PERFMON_EVENTSEL_USR ;
 int BTS_STATE_ACTIVE ;
 int WRITE_ONCE (int ,int ) ;
 int bts_config_buffer (struct bts_buffer*) ;
 int bts_ctx ;
 int intel_pmu_enable_bts (int ) ;
 struct bts_buffer* perf_get_aux (int *) ;
 struct bts_ctx* this_cpu_ptr (int *) ;
 int wmb () ;

__attribute__((used)) static void __bts_event_start(struct perf_event *event)
{
 struct bts_ctx *bts = this_cpu_ptr(&bts_ctx);
 struct bts_buffer *buf = perf_get_aux(&bts->handle);
 u64 config = 0;

 if (!buf->snapshot)
  config |= ARCH_PERFMON_EVENTSEL_INT;
 if (!event->attr.exclude_kernel)
  config |= ARCH_PERFMON_EVENTSEL_OS;
 if (!event->attr.exclude_user)
  config |= ARCH_PERFMON_EVENTSEL_USR;

 bts_config_buffer(buf);





 wmb();


 WRITE_ONCE(bts->state, BTS_STATE_ACTIVE);

 intel_pmu_enable_bts(config);

}
