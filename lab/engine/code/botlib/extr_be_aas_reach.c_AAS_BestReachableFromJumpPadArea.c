
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_8__ {int areanum; struct TYPE_8__* next_area; } ;
typedef TYPE_1__ aas_link_t ;
struct TYPE_9__ {int frames; } ;
typedef TYPE_2__ aas_clientmove_t ;
struct TYPE_10__ {int (* Print ) (int ,char*) ;} ;


 scalar_t__ AAS_AreaJumpPad (int) ;
 float AAS_AreaVolume (int) ;
 int AAS_ClientMovementHitBBox (TYPE_2__*,int,int ,int ,int ,int ,int ,int ,int,float,int ,int ,int) ;
 int AAS_GetJumpPadInfo (int,int ,int ,int ,int ) ;
 TYPE_1__* AAS_LinkEntityClientBBox (int ,int ,int,int ) ;
 int AAS_NextBSPEntity (int) ;
 int AAS_UnlinkFromAreas (TYPE_1__*) ;
 int AAS_ValueForBSPEpairKey (int,char*,char*,int) ;
 int Com_Memset (TYPE_2__*,int ,int) ;
 int LibVarValue (char*,char*) ;
 int MAX_EPAIRKEY ;
 int PRESENCE_CROUCH ;
 int PRESENCE_NORMAL ;
 int PRT_MESSAGE ;
 int VectorAdd (int ,int ,int ) ;
 int VectorSet (int ,int ,int ,int ) ;
 TYPE_3__ botimport ;
 int qfalse ;
 scalar_t__ strcmp (char*,char*) ;
 int stub1 (int ,char*) ;

int AAS_BestReachableFromJumpPadArea(vec3_t origin, vec3_t mins, vec3_t maxs)
{
 int ent, bot_visualizejumppads, bestareanum;
 float volume, bestareavolume;
 vec3_t areastart, cmdmove, bboxmins, bboxmaxs;
 vec3_t absmins, absmaxs, velocity;
 aas_clientmove_t move;
 aas_link_t *areas, *link;
 char classname[MAX_EPAIRKEY];




 bot_visualizejumppads = LibVarValue("bot_visualizejumppads", "0");

 VectorAdd(origin, mins, bboxmins);
 VectorAdd(origin, maxs, bboxmaxs);
 for (ent = AAS_NextBSPEntity(0); ent; ent = AAS_NextBSPEntity(ent))
 {
  if (!AAS_ValueForBSPEpairKey(ent, "classname", classname, MAX_EPAIRKEY)) continue;
  if (strcmp(classname, "trigger_push")) continue;

  if (!AAS_GetJumpPadInfo(ent, areastart, absmins, absmaxs, velocity)) continue;

  areas = AAS_LinkEntityClientBBox(absmins, absmaxs, -1, PRESENCE_CROUCH);
  for (link = areas; link; link = link->next_area)
  {
   if (AAS_AreaJumpPad(link->areanum)) break;
  }
  if (!link)
  {
   botimport.Print(PRT_MESSAGE, "trigger_push not in any jump pad area\n");
   AAS_UnlinkFromAreas(areas);
   continue;
  }



  VectorSet(cmdmove, 0, 0, 0);
  Com_Memset(&move, 0, sizeof(aas_clientmove_t));
  AAS_ClientMovementHitBBox(&move, -1, areastart, PRESENCE_NORMAL, qfalse,
        velocity, cmdmove, 0, 30, 0.1f, bboxmins, bboxmaxs, bot_visualizejumppads);
  if (move.frames < 30)
  {
   bestareanum = 0;
   bestareavolume = 0;
   for (link = areas; link; link = link->next_area)
   {
    if (!AAS_AreaJumpPad(link->areanum)) continue;
    volume = AAS_AreaVolume(link->areanum);
    if (volume >= bestareavolume)
    {
     bestareanum = link->areanum;
     bestareavolume = volume;
    }
   }
   AAS_UnlinkFromAreas(areas);
   return bestareanum;
  }
  AAS_UnlinkFromAreas(areas);
 }
 return 0;
}
