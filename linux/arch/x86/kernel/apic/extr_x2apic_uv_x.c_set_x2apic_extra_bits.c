
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pnode_shift; } ;
struct TYPE_4__ {TYPE_1__ s; } ;


 int __this_cpu_write (int ,int) ;
 TYPE_2__ uvh_apicid ;
 int x2apic_extra_bits ;

__attribute__((used)) static void set_x2apic_extra_bits(int pnode)
{
 __this_cpu_write(x2apic_extra_bits, pnode << uvh_apicid.s.pnode_shift);
}
