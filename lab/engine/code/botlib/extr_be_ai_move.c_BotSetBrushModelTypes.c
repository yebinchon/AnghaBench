
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Print ) (int ,char*,char*) ;} ;


 int AAS_NextBSPEntity (int) ;
 int AAS_ValueForBSPEpairKey (int,char*,char*,int) ;
 int Com_Memset (int *,int ,int) ;
 int MAX_EPAIRKEY ;
 int MAX_MODELS ;
 int MODELTYPE_FUNC_BOB ;
 int MODELTYPE_FUNC_DOOR ;
 int MODELTYPE_FUNC_PLAT ;
 int MODELTYPE_FUNC_STATIC ;
 int PRT_MESSAGE ;
 int Q_stricmp (char*,char*) ;
 int atoi (char*) ;
 TYPE_1__ botimport ;
 int * modeltypes ;
 int stub1 (int ,char*,char*) ;

void BotSetBrushModelTypes(void)
{
 int ent, modelnum;
 char classname[MAX_EPAIRKEY], model[MAX_EPAIRKEY];

 Com_Memset(modeltypes, 0, MAX_MODELS * sizeof(int));

 for (ent = AAS_NextBSPEntity(0); ent; ent = AAS_NextBSPEntity(ent))
 {
  if (!AAS_ValueForBSPEpairKey(ent, "classname", classname, MAX_EPAIRKEY)) continue;
  if (!AAS_ValueForBSPEpairKey(ent, "model", model, MAX_EPAIRKEY)) continue;
  if (model[0]) modelnum = atoi(model+1);
  else modelnum = 0;

  if (modelnum < 0 || modelnum >= MAX_MODELS)
  {
   botimport.Print(PRT_MESSAGE, "entity %s model number out of range\n", classname);
   continue;
  }

  if (!Q_stricmp(classname, "func_bobbing"))
   modeltypes[modelnum] = MODELTYPE_FUNC_BOB;
  else if (!Q_stricmp(classname, "func_plat"))
   modeltypes[modelnum] = MODELTYPE_FUNC_PLAT;
  else if (!Q_stricmp(classname, "func_door"))
   modeltypes[modelnum] = MODELTYPE_FUNC_DOOR;
  else if (!Q_stricmp(classname, "func_static"))
   modeltypes[modelnum] = MODELTYPE_FUNC_STATIC;
 }
}
