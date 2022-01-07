
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ contents; } ;
typedef TYPE_1__ face_t ;
struct TYPE_7__ {int* v; } ;
typedef TYPE_2__ dedge_t ;


 int Error (char*) ;
 int MAX_MAP_EDGES ;
 int c_tryedges ;
 TYPE_2__* dedges ;
 TYPE_1__*** edgefaces ;
 int firstmodeledge ;
 int noshare ;
 int numedges ;
 int printf (char*) ;

int GetEdge2 (int v1, int v2, face_t *f)
{
 dedge_t *edge;
 int i;

 c_tryedges++;

 if (!noshare)
 {
  for (i=firstmodeledge ; i < numedges ; i++)
  {
   edge = &dedges[i];
   if (v1 == edge->v[1] && v2 == edge->v[0]
   && edgefaces[i][0]->contents == f->contents)
   {
    if (edgefaces[i][1])

     continue;
    edgefaces[i][1] = f;
    return -i;
   }







  }
 }


 if (numedges >= MAX_MAP_EDGES)
  Error ("numedges == MAX_MAP_EDGES");
 edge = &dedges[numedges];
 numedges++;
 edge->v[0] = v1;
 edge->v[1] = v2;
 edgefaces[numedges-1][0] = f;

 return numedges-1;
}
