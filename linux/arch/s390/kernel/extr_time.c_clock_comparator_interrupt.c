
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ext_code {int dummy; } ;
struct TYPE_2__ {scalar_t__ clock_comparator; } ;


 int IRQEXT_CLK ;
 TYPE_1__ S390_lowcore ;
 scalar_t__ clock_comparator_max ;
 int inc_irq_stat (int ) ;
 int set_clock_comparator (scalar_t__) ;

__attribute__((used)) static void clock_comparator_interrupt(struct ext_code ext_code,
           unsigned int param32,
           unsigned long param64)
{
 inc_irq_stat(IRQEXT_CLK);
 if (S390_lowcore.clock_comparator == clock_comparator_max)
  set_clock_comparator(S390_lowcore.clock_comparator);
}
