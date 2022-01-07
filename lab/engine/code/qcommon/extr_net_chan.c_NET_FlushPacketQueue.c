
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int release; struct TYPE_5__* data; struct TYPE_5__* next; int to; int length; } ;
typedef TYPE_1__ packetQueue_t ;


 int Sys_Milliseconds () ;
 int Sys_SendPacket (int ,TYPE_1__*,int ) ;
 int Z_Free (TYPE_1__*) ;
 TYPE_1__* packetQueue ;

void NET_FlushPacketQueue(void)
{
 packetQueue_t *last;
 int now;

 while(packetQueue) {
  now = Sys_Milliseconds();
  if(packetQueue->release >= now)
   break;
  Sys_SendPacket(packetQueue->length, packetQueue->data,
   packetQueue->to);
  last = packetQueue;
  packetQueue = packetQueue->next;
  Z_Free(last->data);
  Z_Free(last);
 }
}
