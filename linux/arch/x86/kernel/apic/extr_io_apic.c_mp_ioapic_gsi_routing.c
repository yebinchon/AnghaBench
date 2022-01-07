
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_ioapic_gsi {int dummy; } ;
struct TYPE_2__ {struct mp_ioapic_gsi gsi_config; } ;


 TYPE_1__* ioapics ;

__attribute__((used)) static inline struct mp_ioapic_gsi *mp_ioapic_gsi_routing(int ioapic_idx)
{
 return &ioapics[ioapic_idx].gsi_config;
}
