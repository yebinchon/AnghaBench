
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* send_IPI_all ) (int) ;} ;


 int __send_ipi_mask (int ,int) ;
 int cpu_online_mask ;
 TYPE_1__ orig_apic ;
 int stub1 (int) ;

__attribute__((used)) static void hv_send_ipi_all(int vector)
{
 if (!__send_ipi_mask(cpu_online_mask, vector))
  orig_apic.send_IPI_all(vector);
}
