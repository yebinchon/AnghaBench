
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {float clientNum; } ;
struct TYPE_6__ {int maxs; int mins; } ;
struct TYPE_8__ {TYPE_2__ s; TYPE_1__ r; } ;
typedef TYPE_3__ gentity_t ;


 int G_SpawnFloat (char*,char*,float*) ;
 int VectorClear (int ) ;
 int trap_LinkEntity (TYPE_3__*) ;

void SP_misc_portal_camera(gentity_t *ent) {
 float roll;

 VectorClear( ent->r.mins );
 VectorClear( ent->r.maxs );
 trap_LinkEntity (ent);

 G_SpawnFloat( "roll", "0", &roll );

 ent->s.clientNum = roll/360.0 * 256;
}
