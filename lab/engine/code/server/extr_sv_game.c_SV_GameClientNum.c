
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int playerState_t ;
typedef int byte ;
struct TYPE_2__ {int gameClientSize; scalar_t__ gameClients; } ;


 TYPE_1__ sv ;

playerState_t *SV_GameClientNum( int num ) {
 playerState_t *ps;

 ps = (playerState_t *)((byte *)sv.gameClients + sv.gameClientSize*(num));

 return ps;
}
