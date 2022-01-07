
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int node_t ;
struct TYPE_2__ {int numareas; int nodes; } ;


 int AAS_CreateAreas_r (int *) ;
 int Log_Write (char*,...) ;
 int qprintf (char*,...) ;
 TYPE_1__ tmpaasworld ;

void AAS_CreateAreas(node_t *node)
{
 Log_Write("AAS_CreateAreas\r\n");
 qprintf("%6d areas created", 0);
 tmpaasworld.nodes = AAS_CreateAreas_r(node);
 qprintf("\n");
 Log_Write("%6d areas created\r\n", tmpaasworld.numareas);
}
