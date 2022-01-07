
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* BSPEntityData ) () ;} ;
struct TYPE_3__ {char* dentdata; int loaded; scalar_t__ entdatasize; } ;


 int AAS_DumpBSPData () ;
 int AAS_ParseBSPEntities () ;
 int BLERR_NOERROR ;
 int Com_Memcpy (char*,int ,scalar_t__) ;
 scalar_t__ GetClearedHunkMemory (scalar_t__) ;
 TYPE_2__ botimport ;
 TYPE_1__ bspworld ;
 int qtrue ;
 scalar_t__ strlen (int ) ;
 int stub1 () ;
 int stub2 () ;

int AAS_LoadBSPFile(void)
{
 AAS_DumpBSPData();
 bspworld.entdatasize = strlen(botimport.BSPEntityData()) + 1;
 bspworld.dentdata = (char *) GetClearedHunkMemory(bspworld.entdatasize);
 Com_Memcpy(bspworld.dentdata, botimport.BSPEntityData(), bspworld.entdatasize);
 AAS_ParseBSPEntities();
 bspworld.loaded = qtrue;
 return BLERR_NOERROR;
}
