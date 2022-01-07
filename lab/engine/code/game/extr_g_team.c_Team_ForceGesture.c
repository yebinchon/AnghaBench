
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int flags; TYPE_2__* client; int inuse; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_5__ {int sessionTeam; } ;
struct TYPE_6__ {TYPE_1__ sess; } ;


 int FL_FORCE_GESTURE ;
 int MAX_CLIENTS ;
 TYPE_3__* g_entities ;

void Team_ForceGesture(int team) {
 int i;
 gentity_t *ent;

 for (i = 0; i < MAX_CLIENTS; i++) {
  ent = &g_entities[i];
  if (!ent->inuse)
   continue;
  if (!ent->client)
   continue;
  if (ent->client->sess.sessionTeam != team)
   continue;

  ent->flags |= FL_FORCE_GESTURE;
 }
}
