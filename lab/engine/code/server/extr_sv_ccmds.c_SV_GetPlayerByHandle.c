
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* name; scalar_t__ state; } ;
typedef TYPE_1__ client_t ;
typedef int cleanName ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {TYPE_1__* clients; } ;


 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Printf (char*,...) ;
 int Q_CleanStr (char*) ;
 int Q_stricmp (char*,char*) ;
 int Q_strncpyz (char*,char*,int) ;
 int atoi (char*) ;
 TYPE_4__* com_sv_running ;
 TYPE_3__* sv_maxclients ;
 TYPE_2__ svs ;

__attribute__((used)) static client_t *SV_GetPlayerByHandle( void ) {
 client_t *cl;
 int i;
 char *s;
 char cleanName[64];


 if ( !com_sv_running->integer ) {
  return ((void*)0);
 }

 if ( Cmd_Argc() < 2 ) {
  Com_Printf( "No player specified.\n" );
  return ((void*)0);
 }

 s = Cmd_Argv(1);


 for(i = 0; s[i] >= '0' && s[i] <= '9'; i++);

 if(!s[i])
 {
  int plid = atoi(s);


  if(plid >= 0 && plid < sv_maxclients->integer)
  {
   cl = &svs.clients[plid];

   if(cl->state)
    return cl;
  }
 }


 for ( i=0, cl=svs.clients ; i < sv_maxclients->integer ; i++,cl++ ) {
  if ( !cl->state ) {
   continue;
  }
  if ( !Q_stricmp( cl->name, s ) ) {
   return cl;
  }

  Q_strncpyz( cleanName, cl->name, sizeof(cleanName) );
  Q_CleanStr( cleanName );
  if ( !Q_stricmp( cleanName, s ) ) {
   return cl;
  }
 }

 Com_Printf( "Player %s is not on the server\n", s );

 return ((void*)0);
}
