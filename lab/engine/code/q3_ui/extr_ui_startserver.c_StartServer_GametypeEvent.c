
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t curvalue; } ;
struct TYPE_4__ {size_t nummaps; int* maplist; int maxpages; scalar_t__ currentmap; scalar_t__ page; TYPE_1__ gametype; } ;


 int GT_FFA ;
 int GT_SINGLE_PLAYER ;
 int GametypeBits (int ) ;
 int Info_ValueForKey (char const*,char*) ;
 int MAX_MAPSPERPAGE ;
 int QM_ACTIVATED ;
 int StartServer_Update () ;
 char* UI_GetArenaInfoByNumber (int) ;
 int UI_GetNumArenas () ;
 int* gametype_remap ;
 TYPE_2__ s_startserver ;

__attribute__((used)) static void StartServer_GametypeEvent( void* ptr, int event ) {
 int i;
 int count;
 int gamebits;
 int matchbits;
 const char *info;

 if( event != QM_ACTIVATED) {
  return;
 }

 count = UI_GetNumArenas();
 s_startserver.nummaps = 0;
 matchbits = 1 << gametype_remap[s_startserver.gametype.curvalue];
 if( gametype_remap[s_startserver.gametype.curvalue] == GT_FFA ) {
  matchbits |= ( 1 << GT_SINGLE_PLAYER );
 }
 for( i = 0; i < count; i++ ) {
  info = UI_GetArenaInfoByNumber( i );

  gamebits = GametypeBits( Info_ValueForKey( info, "type") );
  if( !( gamebits & matchbits ) ) {
   continue;
  }

  s_startserver.maplist[ s_startserver.nummaps ] = i;
  s_startserver.nummaps++;
 }
 s_startserver.maxpages = (s_startserver.nummaps + MAX_MAPSPERPAGE-1)/MAX_MAPSPERPAGE;
 s_startserver.page = 0;
 s_startserver.currentmap = 0;

 StartServer_Update();
}
