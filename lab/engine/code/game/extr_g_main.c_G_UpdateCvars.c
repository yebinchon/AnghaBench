
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_4__ {scalar_t__ modificationCount; scalar_t__ teamShader; TYPE_2__* vmCvar; int cvarName; scalar_t__ trackChange; } ;
typedef TYPE_1__ cvarTable_t ;
struct TYPE_5__ {scalar_t__ modificationCount; int string; } ;


 int G_RemapTeamShaders () ;
 TYPE_1__* gameCvarTable ;
 int gameCvarTableSize ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int trap_Cvar_Update (TYPE_2__*) ;
 int trap_SendServerCommand (int,int ) ;
 int va (char*,int ,int ) ;

void G_UpdateCvars( void ) {
 int i;
 cvarTable_t *cv;
 qboolean remapped = qfalse;

 for ( i = 0, cv = gameCvarTable ; i < gameCvarTableSize ; i++, cv++ ) {
  if ( cv->vmCvar ) {
   trap_Cvar_Update( cv->vmCvar );

   if ( cv->modificationCount != cv->vmCvar->modificationCount ) {
    cv->modificationCount = cv->vmCvar->modificationCount;

    if ( cv->trackChange ) {
     trap_SendServerCommand( -1, va("print \"Server: %s changed to %s\n\"",
      cv->cvarName, cv->vmCvar->string ) );
    }

    if (cv->teamShader) {
     remapped = qtrue;
    }
   }
  }
 }

 if (remapped) {
  G_RemapTeamShaders();
 }
}
