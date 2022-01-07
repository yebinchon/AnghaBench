
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ integer; } ;


 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 int TEAM_BLUE ;
 int TEAM_FREE ;
 int TEAM_RED ;
 int Team_ResetFlag (int ) ;
 TYPE_1__ g_gametype ;

void Team_ResetFlags( void ) {
 if( g_gametype.integer == GT_CTF ) {
  Team_ResetFlag( TEAM_RED );
  Team_ResetFlag( TEAM_BLUE );
 }





}
