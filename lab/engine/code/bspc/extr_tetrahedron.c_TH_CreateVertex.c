
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_4__ {scalar_t__ usercount; int v; } ;
struct TYPE_3__ {int numvertexes; TYPE_2__* vertexes; } ;


 int Error (char*) ;
 int MAX_TH_VERTEXES ;
 int TH_AddVertexToHash (TYPE_2__*) ;
 int VectorCopy (int ,int ) ;
 TYPE_1__ thworld ;

int TH_CreateVertex(vec3_t v)
{
 if (thworld.numvertexes == 0) thworld.numvertexes = 1;
 if (thworld.numvertexes >= MAX_TH_VERTEXES)
  Error("MAX_TH_VERTEXES");
 VectorCopy(v, thworld.vertexes[thworld.numvertexes].v);
 thworld.vertexes[thworld.numvertexes].usercount = 0;
 TH_AddVertexToHash(&thworld.vertexes[thworld.numvertexes]);
 thworld.numvertexes++;
 return thworld.numvertexes-1;
}
