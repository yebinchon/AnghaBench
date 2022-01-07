
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pata_macio_priv {int kind; unsigned int** treg; } ;
__attribute__((used)) static void pata_macio_default_timings(struct pata_macio_priv *priv)
{
 unsigned int value, value2 = 0;

 switch(priv->kind) {
  case 129:
   value = 0x0a820c97;
   value2 = 0x00033031;
   break;
  case 128:
  case 133:
   value = 0x08618a92;
   value2 = 0x00002921;
   break;
  case 131:
   value = 0x0008438c;
   break;
  case 132:
   value = 0x00084526;
   break;
  case 134:
  case 130:
  default:
   value = 0x00074526;
   break;
 }
 priv->treg[0][0] = priv->treg[1][0] = value;
 priv->treg[0][1] = priv->treg[1][1] = value2;
}
