
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int queuedVoipIndex; int queuedVoipPackets; int * voipPacket; } ;
typedef TYPE_1__ client_t ;


 int ARRAY_LEN (int *) ;
 int SV_CloseDownload (TYPE_1__*) ;
 int SV_Netchan_FreeQueue (TYPE_1__*) ;
 int Z_Free (int ) ;

void SV_FreeClient(client_t *client)
{
 SV_Netchan_FreeQueue(client);
 SV_CloseDownload(client);
}
