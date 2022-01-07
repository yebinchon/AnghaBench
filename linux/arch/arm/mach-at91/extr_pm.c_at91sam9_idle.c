
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pmc; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 int AT91_PMC_PCK ;
 scalar_t__ AT91_PMC_SCDR ;
 int cpu_do_idle () ;
 TYPE_2__ soc_pm ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void at91sam9_idle(void)
{
 writel(AT91_PMC_PCK, soc_pm.data.pmc + AT91_PMC_SCDR);
 cpu_do_idle();
}
