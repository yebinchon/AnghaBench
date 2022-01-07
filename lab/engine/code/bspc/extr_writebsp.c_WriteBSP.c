
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int node_t ;
struct TYPE_2__ {int headnode; } ;


 int EmitAreaPortals (int *) ;
 int EmitDrawNode_r (int *) ;
 int c_facenodes ;
 int c_nofaces ;
 TYPE_1__* dmodels ;
 int numfaces ;
 size_t nummodels ;
 int qprintf (char*,...) ;

void WriteBSP (node_t *headnode)
{
 int oldfaces;

 c_nofaces = 0;
 c_facenodes = 0;

 qprintf ("--- WriteBSP ---\n");

 oldfaces = numfaces;
 dmodels[nummodels].headnode = EmitDrawNode_r (headnode);
 EmitAreaPortals (headnode);

 qprintf ("%5i nodes with faces\n", c_facenodes);
 qprintf ("%5i nodes without faces\n", c_nofaces);
 qprintf ("%5i faces\n", numfaces-oldfaces);
}
