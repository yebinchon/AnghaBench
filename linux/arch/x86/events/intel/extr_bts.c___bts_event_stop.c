
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct bts_ctx {int state; } ;


 int WRITE_ONCE (int ,int) ;
 int bts_ctx ;
 int intel_pmu_disable_bts () ;
 struct bts_ctx* this_cpu_ptr (int *) ;

__attribute__((used)) static void __bts_event_stop(struct perf_event *event, int state)
{
 struct bts_ctx *bts = this_cpu_ptr(&bts_ctx);


 WRITE_ONCE(bts->state, state);





 intel_pmu_disable_bts();
}
