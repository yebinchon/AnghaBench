
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size; int data; int type; } ;
typedef TYPE_2__ WSPacket ;
struct TYPE_7__ {TYPE_1__* headers; } ;
typedef TYPE_3__ WSClient ;
struct TYPE_5__ {int * ws_accept; } ;


 int ws_send_data (TYPE_3__*,int ,int ,int ) ;

__attribute__((used)) static int
ws_broadcast_fifo (void *value, void *user_data)
{
  WSClient *client = value;
  WSPacket *packet = user_data;

  if (client == ((void*)0) || user_data == ((void*)0))
    return 1;

  if (client->headers == ((void*)0) || client->headers->ws_accept == ((void*)0))
    return 1;

  ws_send_data (client, packet->type, packet->data, packet->size);

  return 0;
}
