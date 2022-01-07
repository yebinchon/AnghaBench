
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum ipi_message_type { ____Placeholder_ipi_message_type } ipi_message_type ;
struct TYPE_2__ {int bits; } ;


 int cpuid_to_hartid_map (int) ;
 int cpumask_bits (int ) ;
 int cpumask_of (int) ;
 TYPE_1__* ipi_data ;
 int sbi_send_ipi (int ) ;
 int set_bit (int,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static void send_ipi_single(int cpu, enum ipi_message_type op)
{
 int hartid = cpuid_to_hartid_map(cpu);

 smp_mb__before_atomic();
 set_bit(op, &ipi_data[cpu].bits);
 smp_mb__after_atomic();

 sbi_send_ipi(cpumask_bits(cpumask_of(hartid)));
}
