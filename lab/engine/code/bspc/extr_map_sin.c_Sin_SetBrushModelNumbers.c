
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t modelnum; } ;
typedef TYPE_1__ entity_t ;
struct TYPE_7__ {int headnode; } ;
struct TYPE_6__ {int* children; } ;


 int Sin_InitNodeStack () ;
 int Sin_PopNodeStack () ;
 int Sin_PushNodeStack (int) ;
 int Sin_SetLeafBrushesModelNumbers (int,size_t) ;
 TYPE_3__* sin_dmodels ;
 TYPE_2__* sin_dnodes ;

void Sin_SetBrushModelNumbers(entity_t *mapent)
{
 int n, pn;
 int leafnum;


 Sin_InitNodeStack();

 n = sin_dmodels[mapent->modelnum].headnode;
 pn = 0;

 do
 {

  if (n < 0)
  {

   leafnum = (-n) - 1;

   Sin_SetLeafBrushesModelNumbers(leafnum, mapent->modelnum);

   for (pn = Sin_PopNodeStack(); pn >= 0; n = pn, pn = Sin_PopNodeStack())
   {

    if (sin_dnodes[pn].children[0] == n) break;
   }

   if (pn >= 0)
   {

    Sin_PushNodeStack(pn);

    n = sin_dnodes[pn].children[1];
   }
  }
  else
  {

   Sin_PushNodeStack(n);

   n = sin_dnodes[n].children[0];
  }
 } while(pn >= 0);
}
