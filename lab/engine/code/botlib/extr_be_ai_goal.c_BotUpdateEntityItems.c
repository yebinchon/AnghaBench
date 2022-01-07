
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_13__ {scalar_t__ timeout; int entitynum; size_t iteminfo; scalar_t__* origin; int flags; void* goalareanum; int goalorigin; scalar_t__ number; struct TYPE_13__* next; } ;
typedef TYPE_2__ levelitem_t ;
struct TYPE_14__ {int numiteminfo; TYPE_1__* iteminfo; } ;
typedef TYPE_3__ itemconfig_t ;
struct TYPE_15__ {scalar_t__* origin; scalar_t__* lastvisorigin; } ;
typedef TYPE_4__ aas_entityinfo_t ;
struct TYPE_12__ {int modelindex; int maxs; int mins; int classname; } ;


 scalar_t__ AAS_AreaJumpPad (void*) ;
 void* AAS_BestReachableArea (scalar_t__*,int ,int ,int ) ;
 int AAS_EntityInfo (int,TYPE_4__*) ;
 int AAS_EntityModelindex (int) ;
 scalar_t__ AAS_EntityType (int) ;
 int AAS_NextEntity (int) ;
 scalar_t__ AAS_Time () ;
 int AddLevelItemToList (TYPE_2__*) ;
 TYPE_2__* AllocLevelItem () ;
 scalar_t__ ET_ITEM ;
 int FreeLevelItem (TYPE_2__*) ;
 scalar_t__ GT_SINGLE_PLAYER ;
 scalar_t__ GT_TEAM ;
 int IFL_NOTFREE ;
 int IFL_NOTSINGLE ;
 int IFL_NOTTEAM ;
 int Log_Write (char*,int ) ;
 int RemoveLevelItemFromList (TYPE_2__*) ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 int VectorLength (int ) ;
 int VectorSubtract (scalar_t__*,scalar_t__*,int ) ;
 scalar_t__ g_gametype ;
 TYPE_3__* itemconfig ;
 TYPE_2__* levelitems ;
 scalar_t__ numlevelitems ;

void BotUpdateEntityItems(void)
{
 int ent, i, modelindex;
 vec3_t dir;
 levelitem_t *li, *nextli;
 aas_entityinfo_t entinfo;
 itemconfig_t *ic;


 for (li = levelitems; li; li = nextli)
 {
  nextli = li->next;

  if (li->timeout)
  {

   if (li->timeout < AAS_Time())
   {
    RemoveLevelItemFromList(li);
    FreeLevelItem(li);
   }
  }
 }

 ic = itemconfig;
 if (!itemconfig) return;

 for (ent = AAS_NextEntity(0); ent; ent = AAS_NextEntity(ent))
 {
  if (AAS_EntityType(ent) != ET_ITEM) continue;

  modelindex = AAS_EntityModelindex(ent);

  if (!modelindex) continue;

  AAS_EntityInfo(ent, &entinfo);




  if (entinfo.origin[0] != entinfo.lastvisorigin[0] ||
    entinfo.origin[1] != entinfo.lastvisorigin[1] ||
    entinfo.origin[2] != entinfo.lastvisorigin[2]) continue;

  for (li = levelitems; li; li = li->next)
  {

   if (li->entitynum && li->entitynum == ent)
   {

    if (ic->iteminfo[li->iteminfo].modelindex != modelindex)
    {

     RemoveLevelItemFromList(li);
     FreeLevelItem(li);
     li = ((void*)0);
     break;
    }
    else
    {
     if (entinfo.origin[0] != li->origin[0] ||
      entinfo.origin[1] != li->origin[1] ||
      entinfo.origin[2] != li->origin[2])
     {
      VectorCopy(entinfo.origin, li->origin);

      li->goalareanum = AAS_BestReachableArea(li->origin,
          ic->iteminfo[li->iteminfo].mins, ic->iteminfo[li->iteminfo].maxs,
          li->goalorigin);
     }
     break;
    }
   }
  }
  if (li) continue;

  for (li = levelitems; li; li = li->next)
  {

   if (li->entitynum) continue;

   if (g_gametype == GT_SINGLE_PLAYER) {
    if (li->flags & IFL_NOTSINGLE) continue;
   }
   else if (g_gametype >= GT_TEAM) {
    if (li->flags & IFL_NOTTEAM) continue;
   }
   else {
    if (li->flags & IFL_NOTFREE) continue;
   }

   if (ic->iteminfo[li->iteminfo].modelindex == modelindex)
   {

    VectorSubtract(li->origin, entinfo.origin, dir);
    if (VectorLength(dir) < 30)
    {

     li->entitynum = ent;

     if (entinfo.origin[0] != li->origin[0] ||
      entinfo.origin[1] != li->origin[1] ||
      entinfo.origin[2] != li->origin[2])
     {

      VectorCopy(entinfo.origin, li->origin);

      li->goalareanum = AAS_BestReachableArea(li->origin,
          ic->iteminfo[li->iteminfo].mins, ic->iteminfo[li->iteminfo].maxs,
          li->goalorigin);
     }



     break;
    }
   }
  }
  if (li) continue;

  for (i = 0; i < ic->numiteminfo; i++)
  {
   if (ic->iteminfo[i].modelindex == modelindex)
   {
    break;
   }
  }

  if (i >= ic->numiteminfo) continue;

  li = AllocLevelItem();

  if (!li) continue;

  li->entitynum = ent;

  li->number = numlevelitems + ent;

  li->iteminfo = i;

  VectorCopy(entinfo.origin, li->origin);

  li->goalareanum = AAS_BestReachableArea(li->origin,
         ic->iteminfo[i].mins, ic->iteminfo[i].maxs,
         li->goalorigin);

  if (AAS_AreaJumpPad(li->goalareanum))
  {
   FreeLevelItem(li);
   continue;
  }


  li->timeout = AAS_Time() + 30;

  AddLevelItemToList(li);

 }
}
