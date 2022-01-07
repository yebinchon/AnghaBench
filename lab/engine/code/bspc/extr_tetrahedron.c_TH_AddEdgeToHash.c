
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* v; struct TYPE_4__* hashnext; } ;
typedef TYPE_1__ th_edge_t ;
struct TYPE_5__ {TYPE_1__** edgehash; } ;


 int EDGEHASH_SIZE ;
 TYPE_2__ thworld ;

void TH_AddEdgeToHash(th_edge_t *edge)
{
 int hashvalue;

 hashvalue = (edge->v[0] + edge->v[1]) & (EDGEHASH_SIZE-1);
 edge->hashnext = thworld.edgehash[hashvalue];
 thworld.edgehash[hashvalue] = edge;
}
