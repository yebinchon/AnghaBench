
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct grpci1_priv {int dummy; } ;


 int grpci1_cfg_r32 (struct grpci1_priv*,unsigned int,unsigned int,int,int*) ;

__attribute__((used)) static int grpci1_cfg_r8(struct grpci1_priv *priv, unsigned int bus,
    unsigned int devfn, int where, u32 *val)
{
 u32 v;
 int ret;

 ret = grpci1_cfg_r32(priv, bus, devfn, where & ~0x3, &v);
 *val = 0xff & (v >> (8 * (where & 3)));

 return ret;
}
