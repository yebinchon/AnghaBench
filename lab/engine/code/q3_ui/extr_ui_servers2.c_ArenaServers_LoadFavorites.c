
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pingtime; int adrstr; } ;
typedef TYPE_1__ servernode_t ;
typedef int qboolean ;
struct TYPE_8__ {size_t numfavoriteaddresses; int * favoriteaddresses; } ;


 int ArenaServers_MaxPing () ;
 int MAX_ADDRESSLENGTH ;
 int MAX_FAVORITESERVERS ;
 int Q_stricmp (int ,char*) ;
 int Q_strncpyz (int ,char*,int) ;
 TYPE_6__ g_arenaservers ;
 TYPE_1__* g_favoriteserverlist ;
 size_t g_numfavoriteservers ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int qfalse ;
 int qtrue ;
 int strcpy (int ,char*) ;
 int trap_Cvar_VariableStringBuffer (int ,char*,int) ;
 int va (char*,int) ;

void ArenaServers_LoadFavorites( void )
{
 int i;
 int j;
 int numtempitems;
 char adrstr[MAX_ADDRESSLENGTH];
 servernode_t templist[MAX_FAVORITESERVERS];
 qboolean found;

 found = qfalse;


 memcpy( templist, g_favoriteserverlist, sizeof(servernode_t)*MAX_FAVORITESERVERS );
 numtempitems = g_numfavoriteservers;


 memset( g_favoriteserverlist, 0, sizeof(servernode_t)*MAX_FAVORITESERVERS );
 g_numfavoriteservers = 0;


 for (i=0; i<MAX_FAVORITESERVERS; i++)
 {
  trap_Cvar_VariableStringBuffer( va("server%d",i+1), adrstr, MAX_ADDRESSLENGTH );
  if (!adrstr[0])
   continue;




  strcpy( g_arenaservers.favoriteaddresses[g_numfavoriteservers], adrstr );


  for (j=0; j<numtempitems; j++)
   if (!Q_stricmp( templist[j].adrstr, adrstr ))
    break;

  if (j < numtempitems)
  {

   memcpy( &g_favoriteserverlist[g_numfavoriteservers], &templist[j], sizeof(servernode_t) );
   found = qtrue;
  }
  else
  {

   Q_strncpyz( g_favoriteserverlist[g_numfavoriteservers].adrstr, adrstr, MAX_ADDRESSLENGTH );
   g_favoriteserverlist[g_numfavoriteservers].pingtime = ArenaServers_MaxPing();
  }

  g_numfavoriteservers++;
 }

 g_arenaservers.numfavoriteaddresses = g_numfavoriteservers;

 if (!found)
 {


  g_numfavoriteservers = 0;
 }
}
