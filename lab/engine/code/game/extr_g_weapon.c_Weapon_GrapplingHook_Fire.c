
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* client; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_5__ {scalar_t__ fireHeld; int hook; } ;


 int fire_grapple (TYPE_2__*,int ,int ) ;
 int forward ;
 int muzzle ;
 scalar_t__ qtrue ;

void Weapon_GrapplingHook_Fire (gentity_t *ent)
{
 if (!ent->client->fireHeld && !ent->client->hook)
  fire_grapple (ent, muzzle, forward);

 ent->client->fireHeld = qtrue;
}
