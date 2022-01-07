
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ irq; } ;


 scalar_t__ cp0_perfcount_irq ;
 int free_irq (scalar_t__,TYPE_1__*) ;
 TYPE_1__ mipspmu ;
 int perf_irq ;
 int save_perf_irq ;

__attribute__((used)) static void mipspmu_free_irq(void)
{
 if (mipspmu.irq >= 0)
  free_irq(mipspmu.irq, &mipspmu);
 else if (cp0_perfcount_irq < 0)
  perf_irq = save_perf_irq;
}
