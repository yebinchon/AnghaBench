
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ contents; } ;
struct TYPE_10__ {int eFlags; int eType; } ;
struct TYPE_11__ {TYPE_1__ r; TYPE_2__ s; int takedamage; int classname; struct TYPE_11__* activator; int inuse; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_12__ {int num_entities; } ;


 int EF_KAMIKAZE ;
 int ET_INVISIBLE ;
 int EV_GIB_PLAYER ;
 int G_AddEvent (TYPE_3__*,int ,int) ;
 int G_FreeEntity (TYPE_3__*) ;
 TYPE_3__* g_entities ;
 TYPE_4__ level ;
 int qfalse ;
 scalar_t__ strcmp (int ,char*) ;

void GibEntity( gentity_t *self, int killer ) {
 gentity_t *ent;
 int i;


 if (self->s.eFlags & EF_KAMIKAZE) {

  for (i = 0; i < level.num_entities; i++) {
   ent = &g_entities[i];
   if (!ent->inuse)
    continue;
   if (ent->activator != self)
    continue;
   if (strcmp(ent->classname, "kamikaze timer"))
    continue;
   G_FreeEntity(ent);
   break;
  }
 }
 G_AddEvent( self, EV_GIB_PLAYER, killer );
 self->takedamage = qfalse;
 self->s.eType = ET_INVISIBLE;
 self->r.contents = 0;
}
