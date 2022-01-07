
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ranked_player_t ;
typedef scalar_t__ GR_STATUS ;


 int Com_DPrintf (char*,scalar_t__*,void*) ;
 scalar_t__ GR_STATUS_OK ;
 int SV_RankCloseContext (int *) ;
 int SV_RankError (char*,int ) ;
 int SV_RankStatusString (scalar_t__) ;
 int assert (int ) ;

__attribute__((used)) static void SV_RankCleanupCBF( GR_STATUS* status, void* cbf_arg )
{
 ranked_player_t* ranked_player;
 ranked_player = (ranked_player_t*)cbf_arg;

 assert( status != ((void*)0) );


 Com_DPrintf( "SV_RankCleanupCBF( %08X, %08X );\n", status, cbf_arg );

 if( *status != GR_STATUS_OK )
 {
  SV_RankError( "SV_RankCleanupCBF: Unexpected status %s",
   SV_RankStatusString( *status ) );
 }

 SV_RankCloseContext( ranked_player );
}
