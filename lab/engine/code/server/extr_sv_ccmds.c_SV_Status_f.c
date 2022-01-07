
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * persistant; } ;
typedef TYPE_2__ playerState_t ;
struct TYPE_9__ {int remoteAddress; } ;
struct TYPE_11__ {scalar_t__ state; int ping; int rate; TYPE_1__ netchan; int name; } ;
typedef TYPE_3__ client_t ;
struct TYPE_15__ {int integer; } ;
struct TYPE_14__ {int string; } ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {TYPE_3__* clients; } ;


 scalar_t__ CS_CONNECTED ;
 scalar_t__ CS_ZOMBIE ;
 int Com_Printf (char*,...) ;
 char* NET_AdrToString (int ) ;
 size_t PERS_SCORE ;
 TYPE_2__* SV_GameClientNum (int) ;
 int SV_Strlen (int ) ;
 TYPE_7__* com_sv_running ;
 int strlen (char const*) ;
 TYPE_6__* sv_mapname ;
 TYPE_5__* sv_maxclients ;
 TYPE_4__ svs ;

__attribute__((used)) static void SV_Status_f( void ) {
 int i, j, l;
 client_t *cl;
 playerState_t *ps;
 const char *s;
 int ping;


 if ( !com_sv_running->integer ) {
  Com_Printf( "Server is not running.\n" );
  return;
 }

 Com_Printf ("map: %s\n", sv_mapname->string );

 Com_Printf ("cl score ping name            address                                 rate \n");
 Com_Printf ("-- ----- ---- --------------- --------------------------------------- -----\n");
 for (i=0,cl=svs.clients ; i < sv_maxclients->integer ; i++,cl++)
 {
  if (!cl->state)
   continue;
  Com_Printf ("%2i ", i);
  ps = SV_GameClientNum( i );
  Com_Printf ("%5i ", ps->persistant[PERS_SCORE]);

  if (cl->state == CS_CONNECTED)
   Com_Printf ("CON ");
  else if (cl->state == CS_ZOMBIE)
   Com_Printf ("ZMB ");
  else
  {
   ping = cl->ping < 9999 ? cl->ping : 9999;
   Com_Printf ("%4i ", ping);
  }

  Com_Printf ("%s", cl->name);

  l = 16 - SV_Strlen(cl->name);
  j = 0;

  do
  {
   Com_Printf (" ");
   j++;
  } while(j < l);



  s = NET_AdrToString( cl->netchan.remoteAddress );
  Com_Printf ("^7%s", s);
  l = 39 - strlen(s);
  j = 0;

  do
  {
   Com_Printf(" ");
   j++;
  } while(j < l);

  Com_Printf (" %5i", cl->rate);

  Com_Printf ("\n");
 }
 Com_Printf ("\n");
}
