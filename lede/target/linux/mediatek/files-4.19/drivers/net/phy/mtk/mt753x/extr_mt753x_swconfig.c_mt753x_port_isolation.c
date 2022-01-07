
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsw_mt753x {int cpu_port; } ;


 int BIT (int) ;
 int MT753X_NUM_PORTS ;
 int PCR (int) ;
 int PORT_MATRIX_M ;
 int PORT_MATRIX_S ;
 int PVC (int) ;
 int STAG_VPID_S ;
 int VA_TRANSPARENT_PORT ;
 int VLAN_ATTR_S ;
 int mt753x_reg_write (struct gsw_mt753x*,int ,int) ;

__attribute__((used)) static void mt753x_port_isolation(struct gsw_mt753x *gsw)
{
 int i;

 for (i = 0; i < MT753X_NUM_PORTS; i++)
  mt753x_reg_write(gsw, PCR(i),
     BIT(gsw->cpu_port) << PORT_MATRIX_S);

 mt753x_reg_write(gsw, PCR(gsw->cpu_port), PORT_MATRIX_M);

 for (i = 0; i < MT753X_NUM_PORTS; i++)
  mt753x_reg_write(gsw, PVC(i),
     (0x8100 << STAG_VPID_S) |
     (VA_TRANSPARENT_PORT << VLAN_ATTR_S));
}
