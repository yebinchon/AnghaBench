
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int apicid; } ;
struct TYPE_4__ {TYPE_1__ mp_config; } ;


 TYPE_2__* ioapics ;

int mpc_ioapic_id(int ioapic_idx)
{
 return ioapics[ioapic_idx].mp_config.apicid;
}
