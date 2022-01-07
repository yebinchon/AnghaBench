
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ freetime; int classname; scalar_t__ inuse; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_9__ {int num_entities; scalar_t__ startTime; int time; TYPE_1__* clients; int gentities; } ;
struct TYPE_7__ {int ps; } ;


 int ENTITYNUM_MAX_NORMAL ;
 int G_Error (char*) ;
 int G_InitGentity (TYPE_2__*) ;
 int G_Printf (char*,int,int ) ;
 size_t MAX_CLIENTS ;
 int MAX_GENTITIES ;
 TYPE_2__* g_entities ;
 TYPE_3__ level ;
 int trap_LocateGameData (int ,int,int,int *,int) ;

gentity_t *G_Spawn( void ) {
 int i, force;
 gentity_t *e;

 e = ((void*)0);
 for ( force = 0 ; force < 2 ; force++ ) {


  e = &g_entities[MAX_CLIENTS];
  for ( i = MAX_CLIENTS ; i<level.num_entities ; i++, e++) {
   if ( e->inuse ) {
    continue;
   }



   if ( !force && e->freetime > level.startTime + 2000 && level.time - e->freetime < 1000 ) {
    continue;
   }


   G_InitGentity( e );
   return e;
  }
  if ( level.num_entities < ENTITYNUM_MAX_NORMAL ) {
   break;
  }
 }
 if ( level.num_entities == ENTITYNUM_MAX_NORMAL ) {
  for (i = 0; i < MAX_GENTITIES; i++) {
   G_Printf("%4i: %s\n", i, g_entities[i].classname);
  }
  G_Error( "G_Spawn: no free entities" );
 }


 level.num_entities++;


 trap_LocateGameData( level.gentities, level.num_entities, sizeof( gentity_t ),
  &level.clients[0].ps, sizeof( level.clients[0] ) );

 G_InitGentity( e );
 return e;
}
