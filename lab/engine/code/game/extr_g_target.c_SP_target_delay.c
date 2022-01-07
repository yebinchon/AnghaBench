
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wait; int use; } ;
typedef TYPE_1__ gentity_t ;


 int G_SpawnFloat (char*,char*,int*) ;
 int Use_Target_Delay ;

void SP_target_delay( gentity_t *ent ) {

 if ( !G_SpawnFloat( "delay", "0", &ent->wait ) ) {
  G_SpawnFloat( "wait", "1", &ent->wait );
 }

 if ( !ent->wait ) {
  ent->wait = 1;
 }
 ent->use = Use_Target_Delay;
}
