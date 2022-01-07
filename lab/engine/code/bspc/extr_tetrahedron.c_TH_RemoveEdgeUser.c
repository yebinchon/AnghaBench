
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t* v; int usercount; } ;
typedef TYPE_2__ th_edge_t ;
struct TYPE_6__ {TYPE_1__* vertexes; TYPE_2__* edges; } ;
struct TYPE_4__ {int usercount; } ;


 size_t abs (int) ;
 TYPE_3__ thworld ;

void TH_RemoveEdgeUser(int edgenum)
{
 th_edge_t *edge;

 edge = &thworld.edges[abs(edgenum)];

 edge->usercount--;

 thworld.vertexes[edge->v[0]].usercount--;
 thworld.vertexes[edge->v[1]].usercount--;
}
