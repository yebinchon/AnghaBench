
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {scalar_t__ health; } ;
typedef TYPE_1__ gentity_t ;
struct TYPE_6__ {int integer; } ;


 TYPE_3__ g_cheats ;
 int g_entities ;
 int qfalse ;
 int qtrue ;
 int trap_SendServerCommand (TYPE_1__*,char*) ;

qboolean CheatsOk( gentity_t *ent ) {
 if ( !g_cheats.integer ) {
  trap_SendServerCommand( ent-g_entities, "print \"Cheats are not enabled on this server.\n\"");
  return qfalse;
 }
 if ( ent->health <= 0 ) {
  trap_SendServerCommand( ent-g_entities, "print \"You must be alive to use this command.\n\"");
  return qfalse;
 }
 return qtrue;
}
