
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int integer; } ;
struct TYPE_5__ {TYPE_1__* clients; } ;
struct TYPE_4__ {int name; int userinfo; } ;


 int Com_Error (int ,char*,int) ;
 int ERR_DROP ;
 char const* Info_ValueForKey (char const*,char*) ;
 int Q_strncpyz (int ,char const*,int) ;
 TYPE_3__* sv_maxclients ;
 TYPE_2__ svs ;

void SV_SetUserinfo( int index, const char *val ) {
 if ( index < 0 || index >= sv_maxclients->integer ) {
  Com_Error (ERR_DROP, "SV_SetUserinfo: bad index %i", index);
 }

 if ( !val ) {
  val = "";
 }

 Q_strncpyz( svs.clients[index].userinfo, val, sizeof( svs.clients[ index ].userinfo ) );
 Q_strncpyz( svs.clients[index].name, Info_ValueForKey( val, "name" ), sizeof(svs.clients[index].name) );
}
