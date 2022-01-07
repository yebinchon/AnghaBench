
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


 int Q2_InitNodeStack () ;
 int Q2_PopNodeStack () ;
 int Q2_PushNodeStack (int) ;
 int Q2_SetLeafBrushesModelNumbers (int,size_t) ;
 TYPE_3__* dmodels ;
 TYPE_2__* dnodes ;

void Q2_SetBrushModelNumbers(entity_t *mapent)
{
 int n, pn;
 int leafnum;


 Q2_InitNodeStack();

 n = dmodels[mapent->modelnum].headnode;
 pn = 0;

 do
 {

  if (n < 0)
  {

   leafnum = (-n) - 1;

   Q2_SetLeafBrushesModelNumbers(leafnum, mapent->modelnum);

   for (pn = Q2_PopNodeStack(); pn >= 0; n = pn, pn = Q2_PopNodeStack())
   {

    if (dnodes[pn].children[0] == n) break;
   }

   if (pn >= 0)
   {

    Q2_PushNodeStack(pn);

    n = dnodes[pn].children[1];
   }
  }
  else
  {

   Q2_PushNodeStack(n);

   n = dnodes[n].children[0];
  }
 } while(pn >= 0);
}
