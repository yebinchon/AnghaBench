
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* send_IPI_self ) (int) ;} ;


 int __send_ipi_one (int ,int) ;
 TYPE_1__ orig_apic ;
 int smp_processor_id () ;
 int stub1 (int) ;

__attribute__((used)) static void hv_send_ipi_self(int vector)
{
 if (!__send_ipi_one(smp_processor_id(), vector))
  orig_apic.send_IPI_self(vector);
}
