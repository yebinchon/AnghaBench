
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ context; char* name; int final_status; int grank_status; int token; scalar_t__ player_id; scalar_t__ match; } ;
typedef TYPE_1__ ranked_player_t ;
typedef int GR_PLAYER_TOKEN ;


 int Com_DPrintf (char*,scalar_t__) ;
 int Cvar_Set (char*,char*) ;
 int GRLOG_OFF ;
 int GRankLogLevel (int ) ;
 int QGR_STATUS_NEW ;
 int Z_Free (int *) ;
 int assert (int) ;
 int memset (int ,int ,int) ;
 int qfalse ;
 int * s_ranked_players ;
 int s_rankings_active ;
 scalar_t__ s_rankings_contexts ;
 scalar_t__ s_server_context ;
 scalar_t__ s_server_match ;

__attribute__((used)) static void SV_RankCloseContext( ranked_player_t* ranked_player )
{
 if( ranked_player == ((void*)0) )
 {

  if( s_server_context == 0 )
  {
   return;
  }
  s_server_context = 0;
  s_server_match = 0;
 }
 else
 {

  if( s_ranked_players == ((void*)0) )
  {
   return;
  }
  if( ranked_player->context == 0 )
  {
   return;
  }
  ranked_player->context = 0;
  ranked_player->match = 0;
  ranked_player->player_id = 0;
  memset( ranked_player->token, 0, sizeof(GR_PLAYER_TOKEN) );
  ranked_player->grank_status = ranked_player->final_status;
  ranked_player->final_status = QGR_STATUS_NEW;
  ranked_player->name[0] = '\0';
 }

 assert( s_rankings_contexts > 0 );
 s_rankings_contexts--;
 Com_DPrintf( "SV_RankCloseContext: s_rankings_contexts = %d\n",
  s_rankings_contexts );

 if( s_rankings_contexts == 0 )
 {
  GRankLogLevel( GRLOG_OFF );

  if( s_ranked_players != ((void*)0) )
  {
   Z_Free( s_ranked_players );
   s_ranked_players = ((void*)0);
  }

  s_rankings_active = qfalse;
  Cvar_Set( "sv_rankingsActive", "0" );
 }
}
