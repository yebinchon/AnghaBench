
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt305x_esw {int dummy; } ;


 int RT305X_ESW_REG_VMSC (unsigned int) ;
 unsigned int RT305X_ESW_VMSC_MSC_M ;
 unsigned int RT305X_ESW_VMSC_MSC_S ;
 unsigned int esw_r32 (struct rt305x_esw*,int ) ;

__attribute__((used)) static unsigned esw_get_vmsc(struct rt305x_esw *esw, unsigned vlan)
{
 unsigned s, val;

 s = RT305X_ESW_VMSC_MSC_S * (vlan % 4);
 val = esw_r32(esw, RT305X_ESW_REG_VMSC(vlan / 4));
 val = (val >> s) & RT305X_ESW_VMSC_MSC_M;

 return val;
}
