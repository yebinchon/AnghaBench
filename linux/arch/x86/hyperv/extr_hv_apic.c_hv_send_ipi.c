
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* send_IPI ) (int,int) ;} ;


 int __send_ipi_one (int,int) ;
 TYPE_1__ orig_apic ;
 int stub1 (int,int) ;

__attribute__((used)) static void hv_send_ipi(int cpu, int vector)
{
 if (!__send_ipi_one(cpu, vector))
  orig_apic.send_IPI(cpu, vector);
}
