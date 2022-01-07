
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int filename; scalar_t__ savefile; scalar_t__ initialized; int loaded; } ;
struct TYPE_3__ {int (* Print ) (int ,char*,int ) ;} ;


 scalar_t__ AAS_ContinueInitReachability (float) ;
 int AAS_InitClustering () ;
 int AAS_InitRouting () ;
 int AAS_Optimize () ;
 int AAS_SetInitialized () ;
 scalar_t__ AAS_WriteAASFile (int ) ;
 scalar_t__ LibVarGetValue (char*) ;
 scalar_t__ LibVarValue (char*,char*) ;
 int PRT_ERROR ;
 int PRT_MESSAGE ;
 TYPE_2__ aasworld ;
 TYPE_1__ botimport ;
 int stub1 (int ,char*,int ) ;
 int stub2 (int ,char*,int ) ;

void AAS_ContinueInit(float time)
{

 if (!aasworld.loaded) return;

 if (aasworld.initialized) return;

 if (AAS_ContinueInitReachability(time)) return;

 AAS_InitClustering();


 if (aasworld.savefile || ((int)LibVarGetValue("forcewrite")))
 {

  if ((int)LibVarValue("aasoptimize", "0")) AAS_Optimize();

  if (AAS_WriteAASFile(aasworld.filename))
  {
   botimport.Print(PRT_MESSAGE, "%s written successfully\n", aasworld.filename);
  }
  else
  {
   botimport.Print(PRT_ERROR, "couldn't write %s\n", aasworld.filename);
  }
 }

 AAS_InitRouting();

 AAS_SetInitialized();
}
