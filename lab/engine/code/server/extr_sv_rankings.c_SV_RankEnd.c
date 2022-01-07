
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ context; scalar_t__ grank_status; } ;
struct TYPE_4__ {int value; } ;
typedef scalar_t__ GR_STATUS ;


 int Com_DPrintf (char*,...) ;
 int Cvar_Set (char*,char*) ;
 int GR_OPT_END ;
 scalar_t__ GR_STATUS_PENDING ;
 scalar_t__ GRankSendReportsAsync (scalar_t__,int ,int ,int *,int ) ;
 scalar_t__ QGR_STATUS_ACTIVE ;
 int SV_RankCloseContext (TYPE_2__*) ;
 int SV_RankError (char*,int ) ;
 int SV_RankSendReportsCBF ;
 int SV_RankStatusString (scalar_t__) ;
 int SV_RankUserLogout (int) ;
 int assert (int) ;
 scalar_t__ qfalse ;
 TYPE_2__* s_ranked_players ;
 scalar_t__ s_rankings_active ;
 scalar_t__ s_server_context ;
 TYPE_1__* sv_maxclients ;

void SV_RankEnd( void )
{
 GR_STATUS status;
 int i;

 Com_DPrintf( "SV_RankEnd();\n" );

 if( !s_rankings_active )
 {

  if( s_ranked_players != ((void*)0) )
  {
   for( i = 0; i < sv_maxclients->value; i++ )
   {
    if( s_ranked_players[i].context != 0 )
    {
     SV_RankCloseContext( &(s_ranked_players[i]) );
    }
   }
  }
  if( s_server_context != 0 )
  {
   SV_RankCloseContext( ((void*)0) );
  }

  return;
 }

 for( i = 0; i < sv_maxclients->value; i++ )
 {
  if( s_ranked_players[i].grank_status == QGR_STATUS_ACTIVE )
  {
   SV_RankUserLogout( i );
   Com_DPrintf( "SV_RankEnd: SV_RankUserLogout %d\n",i );
  }
 }

 assert( s_server_context != 0 );


 status = GRankSendReportsAsync
  (
   s_server_context,
   0,
   SV_RankSendReportsCBF,
   ((void*)0),
   GR_OPT_END
  );

 if( status != GR_STATUS_PENDING )
 {
  SV_RankError( "SV_RankEnd: Expected GR_STATUS_PENDING, got %s",
   SV_RankStatusString( status ) );
 }

 s_rankings_active = qfalse;
 Cvar_Set( "sv_rankingsActive", "0" );
}
