
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int grank_status; } ;
struct TYPE_3__ {int value; } ;




 int QGR_STATUS_NEW ;





 int assert (int) ;
 TYPE_2__* s_ranked_players ;
 int s_rankings_active ;
 TYPE_1__* sv_maxclients ;

void SV_RankUserReset( int index )
{
 if( !s_rankings_active )
 {
  return;
 }

 assert( s_ranked_players != ((void*)0) );
 assert( index >= 0 );
 assert( index < sv_maxclients->value );

 switch( s_ranked_players[index].grank_status )
 {
 case 130:
 case 131:
 case 134:
 case 128:
 case 132:
 case 129:
 case 133:
  s_ranked_players[index].grank_status = QGR_STATUS_NEW;
  break;
 default:
  break;
 }
}
