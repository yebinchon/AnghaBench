
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IRQ_HANDLED ;
 scalar_t__ cp0_perfcount_irq ;
 scalar_t__ perf_irq () ;

__attribute__((used)) static inline int handle_perf_irq(int r2)
{







 return (cp0_perfcount_irq < 0) &&
  perf_irq() == IRQ_HANDLED &&
  !r2;
}
