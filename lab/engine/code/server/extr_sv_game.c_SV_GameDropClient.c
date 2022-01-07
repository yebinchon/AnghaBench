
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int integer; } ;
struct TYPE_3__ {scalar_t__ clients; } ;


 int SV_DropClient (scalar_t__,char const*) ;
 TYPE_2__* sv_maxclients ;
 TYPE_1__ svs ;

void SV_GameDropClient( int clientNum, const char *reason ) {
 if ( clientNum < 0 || clientNum >= sv_maxclients->integer ) {
  return;
 }
 SV_DropClient( svs.clients + clientNum, reason );
}
