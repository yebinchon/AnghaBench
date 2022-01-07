
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct adm6996_priv {int dummy; } ;


 int ADM_MAC_CLONE ;
 int ADM_SYSC3 ;
 int ADM_TBV ;
 int r16 (struct adm6996_priv*,int ) ;
 int w16 (struct adm6996_priv*,int ,int ) ;

__attribute__((used)) static void
adm6996_enable_vlan_6996l(struct adm6996_priv *priv)
{
 u16 reg;

 reg = r16(priv, ADM_SYSC3);
 reg |= ADM_TBV;
 reg |= ADM_MAC_CLONE;
 w16(priv, ADM_SYSC3, reg);
}
