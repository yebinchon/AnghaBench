
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int numachip_phys_pkg_id(int initial_apic_id, int index_msb)
{
 return initial_apic_id >> index_msb;
}
