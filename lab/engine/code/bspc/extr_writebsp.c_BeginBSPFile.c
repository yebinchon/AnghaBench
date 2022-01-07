
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int contents; } ;


 int CONTENTS_SOLID ;
 TYPE_1__* dleafs ;
 scalar_t__ numbrushsides ;
 int numedges ;
 scalar_t__ numfaces ;
 scalar_t__ numleafbrushes ;
 scalar_t__ numleaffaces ;
 int numleafs ;
 scalar_t__ nummodels ;
 scalar_t__ numnodes ;
 scalar_t__ numsurfedges ;
 int numvertexes ;

void BeginBSPFile (void)
{


 nummodels = 0;
 numfaces = 0;
 numnodes = 0;
 numbrushsides = 0;
 numvertexes = 0;
 numleaffaces = 0;
 numleafbrushes = 0;
 numsurfedges = 0;


 numedges = 1;


 numvertexes = 1;


 numleafs = 1;
 dleafs[0].contents = CONTENTS_SOLID;
}
