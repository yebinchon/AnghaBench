
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int masterstr ;
typedef int cvarname ;
struct TYPE_7__ {int string; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ generic; } ;
struct TYPE_8__ {TYPE_3__ status; scalar_t__* numservers; scalar_t__ numqueriedservers; scalar_t__ currentping; int maxservers; int serverlist; TYPE_2__ remove; } ;


 int ArenaServers_StartRefresh () ;
 int ArenaServers_StopRefresh () ;
 int ArenaServers_UpdateMenu () ;
 int Com_sprintf (char*,int,char*,int) ;
 int MAX_FAVORITESERVERS ;
 int MAX_GLOBALSERVERS ;
 int MAX_LOCALSERVERS ;
 int QMF_HIDDEN ;
 int QMF_INACTIVE ;
 int UIAS_NUM_SOURCES ;
 TYPE_4__ g_arenaservers ;
 int g_favoriteserverlist ;
 int * g_globalserverlist ;
 int g_localserverlist ;
 scalar_t__ g_numfavoriteservers ;
 scalar_t__* g_numglobalservers ;
 scalar_t__ g_numlocalservers ;
 int g_servertype ;
 int strcpy (int ,char*) ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;

int ArenaServers_SetType( int type )
{
 ArenaServers_StopRefresh();

 if(type >= 133 && type <= 129)
 {
  char masterstr[2], cvarname[sizeof("sv_master1")];
  int direction;

  if (type == g_servertype || type == ((g_servertype+1) % UIAS_NUM_SOURCES)) {
   direction = 1;
  } else {
   direction = -1;
  }

  while(type >= 133 && type <= 129)
  {
   Com_sprintf(cvarname, sizeof(cvarname), "sv_master%d", type - 134);
   trap_Cvar_VariableStringBuffer(cvarname, masterstr, sizeof(masterstr));
   if(*masterstr)
    break;

   type += direction;
  }
 }

 g_servertype = type;

 switch( type ) {
 default:
 case 128:
  g_arenaservers.remove.generic.flags |= (QMF_INACTIVE|QMF_HIDDEN);
  g_arenaservers.serverlist = g_localserverlist;
  g_arenaservers.numservers = &g_numlocalservers;
  g_arenaservers.maxservers = MAX_LOCALSERVERS;
  break;

 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
  g_arenaservers.remove.generic.flags |= (QMF_INACTIVE|QMF_HIDDEN);
  g_arenaservers.serverlist = g_globalserverlist[type-134];
  g_arenaservers.numservers = &g_numglobalservers[type-134];
  g_arenaservers.maxservers = MAX_GLOBALSERVERS;
  break;

 case 135:
  g_arenaservers.remove.generic.flags &= ~(QMF_INACTIVE|QMF_HIDDEN);
  g_arenaservers.serverlist = g_favoriteserverlist;
  g_arenaservers.numservers = &g_numfavoriteservers;
  g_arenaservers.maxservers = MAX_FAVORITESERVERS;
  break;

 }

 if( !*g_arenaservers.numservers ) {
  ArenaServers_StartRefresh();
 }
 else {

  g_arenaservers.currentping = *g_arenaservers.numservers;
  g_arenaservers.numqueriedservers = *g_arenaservers.numservers;
  ArenaServers_UpdateMenu();
  strcpy(g_arenaservers.status.string,"hit refresh to update");
 }

 return type;
}
