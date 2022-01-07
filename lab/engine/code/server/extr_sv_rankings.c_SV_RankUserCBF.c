
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ final_status; struct TYPE_9__* context; } ;
typedef TYPE_1__ ranked_player_t ;
struct TYPE_10__ {int status; } ;
typedef scalar_t__ GR_STATUS ;
typedef TYPE_2__ GR_LOGIN ;


 int Com_DPrintf (char*,TYPE_2__*,...) ;
 int GR_OPT_END ;



 scalar_t__ GR_STATUS_PENDING ;

 scalar_t__ GRankCleanupAsync (TYPE_1__*,int ,int ,void*,int ) ;
 scalar_t__ GRankJoinGameAsync (TYPE_1__*,int ,int ,void*,int ) ;
 scalar_t__ QGR_STATUS_BAD_PASSWORD ;
 scalar_t__ QGR_STATUS_ERROR ;
 scalar_t__ QGR_STATUS_NEW ;
 scalar_t__ QGR_STATUS_NO_USER ;
 scalar_t__ QGR_STATUS_TIMEOUT ;
 int SV_RankCleanupCBF ;
 int SV_RankCloseContext (TYPE_1__*) ;
 int SV_RankError (char*,int ) ;
 int SV_RankJoinGameCBF ;
 int SV_RankStatusString (scalar_t__) ;
 int assert (TYPE_1__*) ;
 int s_rankings_game_id ;

__attribute__((used)) static void SV_RankUserCBF( GR_LOGIN* gr_login, void* cbf_arg )
{
 ranked_player_t* ranked_player;
 GR_STATUS join_status;
 GR_STATUS cleanup_status;

 assert( gr_login != ((void*)0) );
 assert( cbf_arg != ((void*)0) );

 Com_DPrintf( "SV_RankUserCBF( %08X, %08X );\n", gr_login, cbf_arg );

 ranked_player = (ranked_player_t*)cbf_arg;
 assert(ranked_player);
 assert( ranked_player->context );

 switch( gr_login->status )
 {
  case 129:

   join_status = GRankJoinGameAsync
    (
     ranked_player->context,
     s_rankings_game_id,
     SV_RankJoinGameCBF,
     cbf_arg,
     GR_OPT_END
    );

   if( join_status != GR_STATUS_PENDING )
   {
    SV_RankError( "SV_RankUserCBF: Expected GR_STATUS_PENDING "
     "from GRankJoinGameAsync, got %s",
     SV_RankStatusString( join_status ) );
   }
   break;
  case 130:
   Com_DPrintf( "SV_RankUserCBF: Got status %s\n",
    SV_RankStatusString( gr_login->status ) );
   ranked_player->final_status = QGR_STATUS_NO_USER;
   break;
  case 131:
   Com_DPrintf( "SV_RankUserCBF: Got status %s\n",
    SV_RankStatusString( gr_login->status ) );
   ranked_player->final_status = QGR_STATUS_BAD_PASSWORD;
   break;
  case 128:
   Com_DPrintf( "SV_RankUserCBF: Got status %s\n",
    SV_RankStatusString( gr_login->status ) );
   ranked_player->final_status = QGR_STATUS_TIMEOUT;
   break;
  default:
   Com_DPrintf( "SV_RankUserCBF: Unexpected status %s\n",
    SV_RankStatusString( gr_login->status ) );
   ranked_player->final_status = QGR_STATUS_ERROR;
   break;
 }

 if( ranked_player->final_status != QGR_STATUS_NEW )
 {

  cleanup_status = GRankCleanupAsync
   (
    ranked_player->context,
    0,
    SV_RankCleanupCBF,
    (void*)ranked_player,
    GR_OPT_END
   );

  if( cleanup_status != GR_STATUS_PENDING )
  {
   SV_RankError( "SV_RankUserCBF: Expected GR_STATUS_PENDING "
    "from GRankCleanupAsync, got %s",
    SV_RankStatusString( cleanup_status ) );
   SV_RankCloseContext( ranked_player );
  }
 }
}
