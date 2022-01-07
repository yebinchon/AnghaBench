
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uv_read_apic_id () ;

__attribute__((used)) static int uv_phys_pkg_id(int initial_apicid, int index_msb)
{
 return uv_read_apic_id() >> index_msb;
}
