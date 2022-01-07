
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pata_macio_timing {int mode; } ;
struct pata_macio_priv {struct pata_macio_timing const* timings; } ;



__attribute__((used)) static const struct pata_macio_timing *pata_macio_find_timing(
         struct pata_macio_priv *priv,
         int mode)
{
 int i;

 for (i = 0; priv->timings[i].mode > 0; i++) {
  if (priv->timings[i].mode == mode)
   return &priv->timings[i];
 }
 return ((void*)0);
}
