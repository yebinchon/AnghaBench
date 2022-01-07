
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int colist; } ;
typedef TYPE_1__ WSServer ;
struct TYPE_6__ {scalar_t__ headers; int listener; } ;
typedef TYPE_2__ WSClient ;
typedef int GSLList ;


 int list_remove_node (int *,int *) ;
 int ws_clear_handshake_headers (scalar_t__) ;
 int * ws_get_list_node_from_list (int ,int *) ;

__attribute__((used)) static void
ws_remove_client_from_list (WSClient * client, WSServer * server)
{
  GSLList *node = ((void*)0);

  if (!(node = ws_get_list_node_from_list (client->listener, &server->colist)))
    return;

  if (client->headers)
    ws_clear_handshake_headers (client->headers);
  list_remove_node (&server->colist, node);
}
