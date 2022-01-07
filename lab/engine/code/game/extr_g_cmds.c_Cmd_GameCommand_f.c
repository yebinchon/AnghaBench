
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int svFlags; } ;
struct TYPE_13__ {TYPE_3__ r; TYPE_2__* client; int inuse; } ;
typedef TYPE_4__ gentity_t ;
typedef int arg ;
struct TYPE_10__ {int netname; } ;
struct TYPE_11__ {TYPE_1__ pers; } ;


 int ClientNumberFromString (TYPE_4__*,char*,int ,int ) ;
 int G_LogPrintf (char*,int ,int ,int ) ;
 int G_Say (TYPE_4__*,TYPE_4__*,int ,int ) ;
 int MAX_TOKEN_CHARS ;
 int SAY_TELL ;
 int SVF_BOT ;
 int atoi (char*) ;
 TYPE_4__* g_entities ;
 int * gc_orders ;
 int numgc_orders ;
 int qtrue ;
 int trap_Argc () ;
 int trap_Argv (int,char*,int) ;
 int trap_SendServerCommand (int,int ) ;
 int va (char*,int) ;

void Cmd_GameCommand_f( gentity_t *ent ) {
 int targetNum;
 gentity_t *target;
 int order;
 char arg[MAX_TOKEN_CHARS];

 if ( trap_Argc() != 3 ) {
  trap_SendServerCommand( ent-g_entities, va( "print \"Usage: gc <player id> <order 0-%d>\n\"", numgc_orders - 1 ) );
  return;
 }

 trap_Argv( 2, arg, sizeof( arg ) );
 order = atoi( arg );

 if ( order < 0 || order >= numgc_orders ) {
  trap_SendServerCommand( ent-g_entities, va("print \"Bad order: %i\n\"", order));
  return;
 }

 trap_Argv( 1, arg, sizeof( arg ) );
 targetNum = ClientNumberFromString( ent, arg, qtrue, qtrue );
 if ( targetNum == -1 ) {
  return;
 }

 target = &g_entities[targetNum];
 if ( !target->inuse || !target->client ) {
  return;
 }

 G_LogPrintf( "tell: %s to %s: %s\n", ent->client->pers.netname, target->client->pers.netname, gc_orders[order] );
 G_Say( ent, target, SAY_TELL, gc_orders[order] );


 if ( ent != target && !(ent->r.svFlags & SVF_BOT)) {
  G_Say( ent, ent, SAY_TELL, gc_orders[order] );
 }
}
