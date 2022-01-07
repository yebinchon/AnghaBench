
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_MAPFILE_BRUSHES ;
 int NODESTACKSIZE ;
 int brushmodelnumbers ;
 int memset (int ,int ,int) ;
 int nodestack ;
 int * nodestackptr ;
 scalar_t__ nodestacksize ;

void Sin_ResetMapLoading(void)
{

 memset(nodestack, 0, NODESTACKSIZE * sizeof(int));
 nodestackptr = ((void*)0);
 nodestacksize = 0;
 memset(brushmodelnumbers, 0, MAX_MAPFILE_BRUSHES * sizeof(int));
}
