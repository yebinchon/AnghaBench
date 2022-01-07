
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * frame; } ;
typedef TYPE_1__ WSClient ;


 int free (int *) ;

__attribute__((used)) static void
ws_free_frame (WSClient * client)
{
  if (client->frame)
    free (client->frame);
  client->frame = ((void*)0);
}
