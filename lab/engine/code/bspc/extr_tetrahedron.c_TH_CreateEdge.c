
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* v; } ;
typedef TYPE_1__ th_edge_t ;
struct TYPE_5__ {int numedges; TYPE_1__* edges; } ;


 int Error (char*) ;
 int MAX_TH_EDGES ;
 int TH_AddEdgeToHash (TYPE_1__*) ;
 TYPE_2__ thworld ;

int TH_CreateEdge(int v1, int v2)
{
 th_edge_t *edge;

 if (thworld.numedges == 0) thworld.numedges = 1;
 if (thworld.numedges >= MAX_TH_EDGES)
  Error("MAX_TH_EDGES");
 edge = &thworld.edges[thworld.numedges++];
 edge->v[0] = v1;
 edge->v[1] = v2;
 TH_AddEdgeToHash(edge);
 return thworld.numedges-1;
}
