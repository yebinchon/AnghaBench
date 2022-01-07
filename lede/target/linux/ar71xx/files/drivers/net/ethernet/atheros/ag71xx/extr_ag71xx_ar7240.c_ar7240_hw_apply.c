
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct switch_dev {int dummy; } ;
struct TYPE_2__ {int ports; } ;
struct ar7240sw {int* vlan_table; int* vlan_id; TYPE_1__ swdev; scalar_t__ vlan; } ;
typedef int portmask ;


 int AR7240_MAX_VLANS ;
 int AR7240_NUM_PORTS ;
 int AR7240_PORT_CPU ;
 int AR7240_VTU_OP_FLUSH ;
 int AR7240_VTU_OP_LOAD ;
 int AR7240_VTU_VID_S ;
 int ar7240_vtu_op (struct ar7240sw*,int,int) ;
 int ar7240sw_setup_port (struct ar7240sw*,int,int) ;
 int memset (int*,int ,int) ;
 struct ar7240sw* sw_to_ar7240 (struct switch_dev*) ;

__attribute__((used)) static int
ar7240_hw_apply(struct switch_dev *dev)
{
 struct ar7240sw *as = sw_to_ar7240(dev);
 u8 portmask[AR7240_NUM_PORTS];
 int i, j;


 ar7240_vtu_op(as, AR7240_VTU_OP_FLUSH, 0);

 memset(portmask, 0, sizeof(portmask));
 if (as->vlan) {


  for (j = 0; j < AR7240_MAX_VLANS; j++) {
   u8 vp = as->vlan_table[j];

   if (!vp)
    continue;

   for (i = 0; i < as->swdev.ports; i++) {
    u8 mask = (1 << i);
    if (vp & mask)
     portmask[i] |= vp & ~mask;
   }

   ar7240_vtu_op(as,
    AR7240_VTU_OP_LOAD |
    (as->vlan_id[j] << AR7240_VTU_VID_S),
    as->vlan_table[j]);
  }
 } else {


  for (i = 0; i < as->swdev.ports; i++) {
   if (i == AR7240_PORT_CPU)
    continue;

   portmask[i] = 1 << AR7240_PORT_CPU;
   portmask[AR7240_PORT_CPU] |= (1 << i);
  }
 }


 for (i = 0; i < as->swdev.ports; i++)
  ar7240sw_setup_port(as, i, portmask[i]);

 return 0;
}
