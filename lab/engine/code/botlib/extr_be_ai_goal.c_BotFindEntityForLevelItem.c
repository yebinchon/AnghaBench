
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_9__ {size_t iteminfo; int entitynum; int origin; } ;
typedef TYPE_2__ levelitem_t ;
struct TYPE_10__ {TYPE_1__* iteminfo; } ;
typedef TYPE_3__ itemconfig_t ;
struct TYPE_11__ {scalar_t__* origin; scalar_t__* lastvisorigin; } ;
typedef TYPE_4__ aas_entityinfo_t ;
struct TYPE_8__ {int modelindex; } ;


 int AAS_EntityInfo (int,TYPE_4__*) ;
 int AAS_EntityModelindex (int) ;
 int AAS_NextEntity (int) ;
 int VectorLength (int ) ;
 int VectorSubtract (int ,scalar_t__*,int ) ;
 TYPE_3__* itemconfig ;

void BotFindEntityForLevelItem(levelitem_t *li)
{
 int ent, modelindex;
 itemconfig_t *ic;
 aas_entityinfo_t entinfo;
 vec3_t dir;

 ic = itemconfig;
 if (!itemconfig) return;
 for (ent = AAS_NextEntity(0); ent; ent = AAS_NextEntity(ent))
 {

  modelindex = AAS_EntityModelindex(ent);

  if (!modelindex) continue;

  AAS_EntityInfo(ent, &entinfo);

  if (entinfo.origin[0] != entinfo.lastvisorigin[0] ||
    entinfo.origin[1] != entinfo.lastvisorigin[1] ||
    entinfo.origin[2] != entinfo.lastvisorigin[2]) continue;

  if (ic->iteminfo[li->iteminfo].modelindex == modelindex)
  {

   VectorSubtract(li->origin, entinfo.origin, dir);
   if (VectorLength(dir) < 30)
   {

    li->entitynum = ent;
   }
  }
 }
}
