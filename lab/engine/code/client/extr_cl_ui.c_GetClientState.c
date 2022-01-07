
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int clientNum; int messageString; int updateInfoString; int servername; int connState; int connectPacketCount; } ;
typedef TYPE_3__ uiClientState_t ;
struct TYPE_8__ {int clientNum; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;
struct TYPE_13__ {TYPE_2__ snap; } ;
struct TYPE_12__ {int serverMessage; int servername; int state; int connectPacketCount; } ;
struct TYPE_11__ {int updateInfoString; } ;


 int Q_strncpyz (int ,int ,int) ;
 TYPE_6__ cl ;
 TYPE_5__ clc ;
 TYPE_4__ cls ;

__attribute__((used)) static void GetClientState( uiClientState_t *state ) {
 state->connectPacketCount = clc.connectPacketCount;
 state->connState = clc.state;
 Q_strncpyz( state->servername, clc.servername, sizeof( state->servername ) );
 Q_strncpyz( state->updateInfoString, cls.updateInfoString, sizeof( state->updateInfoString ) );
 Q_strncpyz( state->messageString, clc.serverMessage, sizeof( state->messageString ) );
 state->clientNum = cl.snap.ps.clientNum;
}
