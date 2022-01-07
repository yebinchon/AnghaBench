
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ gentity_t ;


 int CheatsOk (TYPE_1__*) ;
 int FL_NOTARGET ;
 int g_entities ;
 int trap_SendServerCommand (TYPE_1__*,int ) ;
 int va (char*,char*) ;

void Cmd_Notarget_f( gentity_t *ent ) {
 char *msg;

 if ( !CheatsOk( ent ) ) {
  return;
 }

 ent->flags ^= FL_NOTARGET;
 if (!(ent->flags & FL_NOTARGET) )
  msg = "notarget OFF\n";
 else
  msg = "notarget ON\n";

 trap_SendServerCommand( ent-g_entities, va("print \"%s\"", msg));
}
