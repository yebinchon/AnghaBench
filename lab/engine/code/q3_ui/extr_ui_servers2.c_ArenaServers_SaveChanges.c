
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numfavoriteaddresses; char** favoriteaddresses; } ;


 int MAX_FAVORITESERVERS ;
 TYPE_1__ g_arenaservers ;
 int trap_Cvar_Set (int ,char*) ;
 int va (char*,int) ;

void ArenaServers_SaveChanges( void )
{
 int i;

 for (i=0; i<g_arenaservers.numfavoriteaddresses; i++)
  trap_Cvar_Set( va("server%d",i+1), g_arenaservers.favoriteaddresses[i] );

 for (; i<MAX_FAVORITESERVERS; i++)
  trap_Cvar_Set( va("server%d",i+1), "" );
}
