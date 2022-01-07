
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpumask {int dummy; } ;
struct TYPE_2__ {int (* send_IPI_mask ) (struct cpumask const*,int) ;} ;


 int __send_ipi_mask (struct cpumask const*,int) ;
 TYPE_1__ orig_apic ;
 int stub1 (struct cpumask const*,int) ;

__attribute__((used)) static void hv_send_ipi_mask(const struct cpumask *mask, int vector)
{
 if (!__send_ipi_mask(mask, vector))
  orig_apic.send_IPI_mask(mask, vector);
}
