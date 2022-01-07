
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* send_IPI ) (int,int ) ;} ;


 int X86_PLATFORM_IPI_VECTOR ;
 TYPE_1__* apic ;
 int stub1 (int,int ) ;

__attribute__((used)) static void hv_qlock_kick(int cpu)
{
 apic->send_IPI(cpu, X86_PLATFORM_IPI_VECTOR);
}
