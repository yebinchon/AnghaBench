
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int var ;
struct TYPE_5__ {char* cvarName; int cvarFlags; int defaultString; int * vmCvar; } ;
typedef TYPE_1__ cvarTable_t ;
struct TYPE_7__ {int modificationCount; } ;
struct TYPE_6__ {int localServer; } ;


 int CVAR_ARCHIVE ;
 int CVAR_USERINFO ;
 int DEFAULT_MODEL ;
 int DEFAULT_TEAM_HEAD ;
 int DEFAULT_TEAM_MODEL ;
 int MAX_TOKEN_CHARS ;
 int atoi (char*) ;
 TYPE_4__ cg_forceModel ;
 TYPE_3__ cgs ;
 TYPE_1__* cvarTable ;
 int cvarTableSize ;
 int forceModelModificationCount ;
 int trap_Cvar_Register (int *,char*,int ,int) ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;

void CG_RegisterCvars( void ) {
 int i;
 cvarTable_t *cv;
 char var[MAX_TOKEN_CHARS];

 for ( i = 0, cv = cvarTable ; i < cvarTableSize ; i++, cv++ ) {
  trap_Cvar_Register( cv->vmCvar, cv->cvarName,
   cv->defaultString, cv->cvarFlags );
 }


 trap_Cvar_VariableStringBuffer( "sv_running", var, sizeof( var ) );
 cgs.localServer = atoi( var );

 forceModelModificationCount = cg_forceModel.modificationCount;

 trap_Cvar_Register(((void*)0), "model", DEFAULT_MODEL, CVAR_USERINFO | CVAR_ARCHIVE );
 trap_Cvar_Register(((void*)0), "headmodel", DEFAULT_MODEL, CVAR_USERINFO | CVAR_ARCHIVE );
 trap_Cvar_Register(((void*)0), "team_model", DEFAULT_TEAM_MODEL, CVAR_USERINFO | CVAR_ARCHIVE );
 trap_Cvar_Register(((void*)0), "team_headmodel", DEFAULT_TEAM_HEAD, CVAR_USERINFO | CVAR_ARCHIVE );
}
