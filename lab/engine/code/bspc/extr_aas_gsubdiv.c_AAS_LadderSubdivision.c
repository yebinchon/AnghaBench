
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nodes; } ;


 int AAS_LadderSubdivision_r (int ) ;
 int Log_Write (char*,...) ;
 scalar_t__ numladdersubdivisions ;
 int qprintf (char*,...) ;
 TYPE_1__ tmpaasworld ;

void AAS_LadderSubdivision(void)
{
 Log_Write("AAS_LadderSubdivision\r\n");
 numladdersubdivisions = 0;
 qprintf("%6i ladder subdivisions", numladdersubdivisions);

 AAS_LadderSubdivision_r(tmpaasworld.nodes);

 qprintf("\n");
 Log_Write("%6i ladder subdivisions\r\n", numladdersubdivisions);
}
