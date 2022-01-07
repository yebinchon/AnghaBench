
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int APIC_DEST_LOGICAL ;
 int __x2apic_send_IPI_dest (int ,int,int ) ;
 int per_cpu (int ,int) ;
 int x2apic_wrmsr_fence () ;
 int x86_cpu_to_logical_apicid ;

__attribute__((used)) static void x2apic_send_IPI(int cpu, int vector)
{
 u32 dest = per_cpu(x86_cpu_to_logical_apicid, cpu);

 x2apic_wrmsr_fence();
 __x2apic_send_IPI_dest(dest, vector, APIC_DEST_LOGICAL);
}
