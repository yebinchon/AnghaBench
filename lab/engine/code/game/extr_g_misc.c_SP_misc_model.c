
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int trBase; } ;
struct TYPE_9__ {TYPE_1__ apos; int angles; int origin; int modelindex; } ;
struct TYPE_10__ {TYPE_2__ s; int maxs; int mins; int model; } ;
typedef TYPE_3__ gentity_t ;


 int G_FreeEntity (TYPE_3__*) ;
 int G_ModelIndex (int ) ;
 int G_SetOrigin (TYPE_3__*,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorSet (int ,int,int,int) ;
 int trap_LinkEntity (TYPE_3__*) ;

void SP_misc_model( gentity_t *ent ) {
 G_FreeEntity( ent );

}
