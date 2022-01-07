
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int qint64 ;
typedef int game_id ;


 int Com_DPrintf (char*) ;
 int LittleLong64 (int ) ;
 int SV_RankAsciiEncode (char*,unsigned char*,int) ;
 int assert (int ) ;

__attribute__((used)) static void SV_RankEncodeGameID( uint64_t game_id, char* result,
 int len )
{
 assert( result != ((void*)0) );

 if( len < ( ( sizeof(game_id) * 4) / 3 + 2) )
 {
  Com_DPrintf( "SV_RankEncodeGameID: result buffer too small\n" );
  result[0] = '\0';
 }
 else
 {
  qint64 gameid = LittleLong64(*(qint64*)&game_id);
  SV_RankAsciiEncode( result, (unsigned char*)&gameid,
   sizeof(qint64) );
 }
}
