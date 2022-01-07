
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int state; } ;
typedef TYPE_1__ client_t ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {TYPE_1__* clients; } ;


 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Printf (char*,...) ;
 int atoi (char*) ;
 TYPE_4__* com_sv_running ;
 TYPE_3__* sv_maxclients ;
 TYPE_2__ svs ;

__attribute__((used)) static client_t *SV_GetPlayerByNum( void ) {
 client_t *cl;
 int i;
 int idnum;
 char *s;


 if ( !com_sv_running->integer ) {
  return ((void*)0);
 }

 if ( Cmd_Argc() < 2 ) {
  Com_Printf( "No player specified.\n" );
  return ((void*)0);
 }

 s = Cmd_Argv(1);

 for (i = 0; s[i]; i++) {
  if (s[i] < '0' || s[i] > '9') {
   Com_Printf( "Bad slot number: %s\n", s);
   return ((void*)0);
  }
 }
 idnum = atoi( s );
 if ( idnum < 0 || idnum >= sv_maxclients->integer ) {
  Com_Printf( "Bad client slot: %i\n", idnum );
  return ((void*)0);
 }

 cl = &svs.clients[idnum];
 if ( !cl->state ) {
  Com_Printf( "Client %i is not active\n", idnum );
  return ((void*)0);
 }
 return cl;
}
