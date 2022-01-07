
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_ioapic_gsi {int gsi_end; int gsi_base; } ;


 struct mp_ioapic_gsi* mp_ioapic_gsi_routing (int) ;

__attribute__((used)) static inline int mp_ioapic_pin_count(int ioapic)
{
 struct mp_ioapic_gsi *gsi_cfg = mp_ioapic_gsi_routing(ioapic);

 return gsi_cfg->gsi_end - gsi_cfg->gsi_base + 1;
}
