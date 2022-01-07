
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nds32_pmu {int (* handle_irq ) (int,void*) ;} ;
typedef int irqreturn_t ;


 scalar_t__ local_clock () ;
 int perf_sample_event_took (scalar_t__) ;
 int stub1 (int,void*) ;

__attribute__((used)) static irqreturn_t nds32_pmu_dispatch_irq(int irq, void *dev)
{
 struct nds32_pmu *nds32_pmu = (struct nds32_pmu *)dev;
 int ret;
 u64 start_clock, finish_clock;

 start_clock = local_clock();
 ret = nds32_pmu->handle_irq(irq, dev);
 finish_clock = local_clock();

 perf_sample_event_took(finish_clock - start_clock);
 return ret;
}
