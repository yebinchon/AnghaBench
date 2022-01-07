
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_ID ;
 int apic_read (int ) ;
 unsigned int x2apic_get_apic_id (int ) ;

__attribute__((used)) static unsigned int uv_read_apic_id(void)
{
 return x2apic_get_apic_id(apic_read(APIC_ID));
}
