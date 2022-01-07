
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int colist; } ;
typedef TYPE_2__ WSServer ;
struct TYPE_11__ {int len; int data; int type; } ;
typedef TYPE_3__ WSPacket ;
struct TYPE_12__ {TYPE_1__* headers; } ;
typedef TYPE_4__ WSClient ;
struct TYPE_9__ {int * ws_accept; } ;


 TYPE_4__* ws_get_client_from_list (int,int *) ;
 int ws_send_data (TYPE_4__*,int ,int ,int ) ;

__attribute__((used)) static void
ws_send_strict_fifo_to_client (WSServer * server, int listener, WSPacket * pa)
{
  WSClient *client = ((void*)0);

  if (!(client = ws_get_client_from_list (listener, &server->colist)))
    return;

  if (client->headers == ((void*)0) || client->headers->ws_accept == ((void*)0))
    return;
  ws_send_data (client, pa->type, pa->data, pa->len);
}
