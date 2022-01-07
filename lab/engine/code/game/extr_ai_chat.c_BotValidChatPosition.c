
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_6__ {scalar_t__ ent; } ;
typedef TYPE_1__ bsp_trace_t ;
struct TYPE_7__ {int client; int origin; int entitynum; scalar_t__* inventory; } ;
typedef TYPE_2__ bot_state_t ;


 int BotAI_Trace (TYPE_1__*,int*,int*,int*,int*,int ,int ) ;
 scalar_t__ BotIsDead (TYPE_2__*) ;
 int CONTENTS_LAVA ;
 int CONTENTS_SLIME ;
 scalar_t__ ENTITYNUM_WORLD ;
 size_t INVENTORY_ENVIRONMENTSUIT ;
 size_t INVENTORY_FLIGHT ;
 size_t INVENTORY_HASTE ;
 size_t INVENTORY_INVISIBILITY ;
 size_t INVENTORY_QUAD ;
 size_t INVENTORY_REGEN ;
 int MASK_SOLID ;
 int MASK_WATER ;
 int PRESENCE_CROUCH ;
 int VectorCopy (int ,int*) ;
 int qfalse ;
 int qtrue ;
 int trap_AAS_PresenceTypeBoundingBox (int ,int*,int*) ;
 int trap_PointContents (int*,int ) ;

int BotValidChatPosition(bot_state_t *bs) {
 vec3_t point, start, end, mins, maxs;
 bsp_trace_t trace;


 if (BotIsDead(bs)) return qtrue;

 if (bs->inventory[INVENTORY_QUAD] ||
  bs->inventory[INVENTORY_ENVIRONMENTSUIT] ||
  bs->inventory[INVENTORY_HASTE] ||
  bs->inventory[INVENTORY_INVISIBILITY] ||
  bs->inventory[INVENTORY_REGEN] ||
  bs->inventory[INVENTORY_FLIGHT]) return qfalse;



 VectorCopy(bs->origin, point);
 point[2] -= 24;
 if (trap_PointContents(point,bs->entitynum) & (CONTENTS_LAVA|CONTENTS_SLIME)) return qfalse;

 VectorCopy(bs->origin, point);
 point[2] += 32;
 if (trap_PointContents(point,bs->entitynum) & MASK_WATER) return qfalse;

 VectorCopy(bs->origin, start);
 VectorCopy(bs->origin, end);
 start[2] += 1;
 end[2] -= 10;
 trap_AAS_PresenceTypeBoundingBox(PRESENCE_CROUCH, mins, maxs);
 BotAI_Trace(&trace, start, mins, maxs, end, bs->client, MASK_SOLID);
 if (trace.ent != ENTITYNUM_WORLD) return qfalse;

 return qtrue;
}
