
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* message; } ;
typedef TYPE_1__ WSClient ;
struct TYPE_5__ {struct TYPE_5__* payload; } ;


 int free (TYPE_3__*) ;

__attribute__((used)) static void
ws_free_message (WSClient * client)
{
  if (client->message && client->message->payload)
    free (client->message->payload);
  if (client->message)
    free (client->message);
  client->message = ((void*)0);
}
