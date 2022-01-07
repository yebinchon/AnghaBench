
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ gsi_base; } ;


 TYPE_1__* mp_ioapic_gsi_routing (int) ;

__attribute__((used)) static inline u32 mp_pin_to_gsi(int ioapic, int pin)
{
 return mp_ioapic_gsi_routing(ioapic)->gsi_base + pin;
}
