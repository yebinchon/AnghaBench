
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
typedef TYPE_1__ WSClient ;


 int WS_OK ;
 TYPE_1__* xcalloc (int,int) ;

__attribute__((used)) static WSClient *
new_wsclient (void)
{
  WSClient *client = xcalloc (1, sizeof (WSClient));
  client->status = WS_OK;

  return client;
}
