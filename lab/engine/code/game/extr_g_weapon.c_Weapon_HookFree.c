
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* parent; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_9__ {TYPE_2__* client; } ;
struct TYPE_7__ {int pm_flags; } ;
struct TYPE_8__ {TYPE_1__ ps; int * hook; } ;


 int G_FreeEntity (TYPE_4__*) ;
 int PMF_GRAPPLE_PULL ;

void Weapon_HookFree (gentity_t *ent)
{
 ent->parent->client->hook = ((void*)0);
 ent->parent->client->ps.pm_flags &= ~PMF_GRAPPLE_PULL;
 G_FreeEntity( ent );
}
