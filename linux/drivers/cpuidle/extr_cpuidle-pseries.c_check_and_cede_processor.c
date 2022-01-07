
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_EE ;
 scalar_t__ WARN_ON (int) ;
 int __hard_irq_enable () ;
 int cede_processor () ;
 int mfmsr () ;
 scalar_t__ prep_irq_for_idle () ;

__attribute__((used)) static void check_and_cede_processor(void)
{





 if (prep_irq_for_idle()) {
  cede_processor();





 }
}
