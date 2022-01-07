
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef int gentity_t ;
struct TYPE_4__ {scalar_t__ connected; int netname; } ;
struct TYPE_5__ {TYPE_1__ pers; } ;
typedef TYPE_2__ gclient_t ;
typedef int cleanName ;
struct TYPE_6__ {int maxclients; TYPE_2__* clients; } ;


 scalar_t__ CON_CONNECTED ;
 int MAX_STRING_CHARS ;
 int Q_CleanStr (char*) ;
 int Q_stricmp (char*,char*) ;
 int Q_strncpyz (char*,int ,int) ;
 scalar_t__ StringIsInteger (char*) ;
 int atoi (char*) ;
 int g_entities ;
 TYPE_3__ level ;
 int trap_SendServerCommand (int *,int ) ;
 int va (char*,char*) ;

int ClientNumberFromString( gentity_t *to, char *s, qboolean checkNums, qboolean checkNames ) {
 gclient_t *cl;
 int idnum;
 char cleanName[MAX_STRING_CHARS];

 if ( checkNums ) {

  if ( StringIsInteger( s ) ) {
   idnum = atoi( s );
   if ( idnum >= 0 && idnum < level.maxclients ) {
    cl = &level.clients[idnum];
    if ( cl->pers.connected == CON_CONNECTED ) {
     return idnum;
    }
   }
  }
 }

 if ( checkNames ) {

  for ( idnum=0,cl=level.clients ; idnum < level.maxclients ; idnum++,cl++ ) {
   if ( cl->pers.connected != CON_CONNECTED ) {
    continue;
   }
   Q_strncpyz(cleanName, cl->pers.netname, sizeof(cleanName));
   Q_CleanStr(cleanName);
   if ( !Q_stricmp( cleanName, s ) ) {
    return idnum;
   }
  }
 }

 trap_SendServerCommand( to-g_entities, va("print \"User %s is not on the server\n\"", s));
 return -1;
}
