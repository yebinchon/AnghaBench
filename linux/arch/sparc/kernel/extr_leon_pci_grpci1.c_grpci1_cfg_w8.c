
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct grpci1_priv {int dummy; } ;


 int grpci1_cfg_r32 (struct grpci1_priv*,unsigned int,unsigned int,int,int*) ;
 int grpci1_cfg_w32 (struct grpci1_priv*,unsigned int,unsigned int,int,int) ;

__attribute__((used)) static int grpci1_cfg_w8(struct grpci1_priv *priv, unsigned int bus,
    unsigned int devfn, int where, u32 val)
{
 int ret;
 u32 v;

 ret = grpci1_cfg_r32(priv, bus, devfn, where & ~0x3, &v);
 if (ret != 0)
  return ret;
 v = (v & ~(0xff << (8 * (where & 0x3)))) |
     ((0xff & val) << (8 * (where & 0x3)));
 return grpci1_cfg_w32(priv, bus, devfn, where & ~0x3, v);
}
