
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ connected; int netname; } ;
struct TYPE_9__ {int sessionTeam; } ;
struct TYPE_11__ {TYPE_3__ pers; TYPE_2__ sess; } ;
typedef TYPE_4__ gclient_t ;
struct TYPE_8__ {int svFlags; } ;
struct TYPE_14__ {TYPE_1__ r; } ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {TYPE_4__* clients; } ;


 scalar_t__ CON_DISCONNECTED ;
 scalar_t__ Q_stricmp (char const*,int ) ;
 int SVF_BOT ;
 TYPE_7__* g_entities ;
 TYPE_6__ g_maxclients ;
 TYPE_5__ level ;

int G_CountBotPlayersByName( const char *name, int team ) {
 int i, num;
 gclient_t *cl;

 num = 0;
 for ( i=0 ; i< g_maxclients.integer ; i++ ) {
  cl = level.clients + i;
  if ( cl->pers.connected == CON_DISCONNECTED ) {
   continue;
  }
  if ( !(g_entities[i].r.svFlags & SVF_BOT) ) {
   continue;
  }
  if ( team >= 0 && cl->sess.sessionTeam != team ) {
   continue;
  }
  if ( name && Q_stricmp( name, cl->pers.netname ) ) {
   continue;
  }
  num++;
 }
 return num;
}
