
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int trace_t ;
typedef int trace ;
struct TYPE_10__ {scalar_t__ nextthink; int item; int target; int client; } ;
typedef TYPE_1__ gentity_t ;


 int FOFS (int ) ;
 TYPE_1__* G_Find (TYPE_1__*,int ,int ) ;
 int Touch_Item (TYPE_1__*,TYPE_1__*,int *) ;
 int memset (int *,int ,int) ;
 int targetname ;
 int trap_UnlinkEntity (TYPE_1__*) ;

void Use_Target_Give( gentity_t *ent, gentity_t *other, gentity_t *activator ) {
 gentity_t *t;
 trace_t trace;

 if ( !activator->client ) {
  return;
 }

 if ( !ent->target ) {
  return;
 }

 memset( &trace, 0, sizeof( trace ) );
 t = ((void*)0);
 while ( (t = G_Find (t, FOFS(targetname), ent->target)) != ((void*)0) ) {
  if ( !t->item ) {
   continue;
  }
  Touch_Item( t, activator, &trace );


  t->nextthink = 0;
  trap_UnlinkEntity( t );
 }
}
