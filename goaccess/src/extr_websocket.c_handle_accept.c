
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int colist; } ;
typedef TYPE_1__ WSServer ;
struct TYPE_10__ {int remote_ip; int sslstatus; } ;
typedef TYPE_2__ WSClient ;
struct TYPE_11__ {scalar_t__ use_ssl; } ;


 int FD_SETSIZE ;
 int LOG (char*) ;
 int WS_TLS_ACCEPTING ;
 int WS_TOO_BUSY_STR ;
 int accept_client (int,int *) ;
 int handle_read_close (int,TYPE_2__*,TYPE_1__*) ;
 int http_error (TYPE_2__*,int ) ;
 TYPE_2__* ws_get_client_from_list (int,int *) ;
 TYPE_3__ wsconfig ;

__attribute__((used)) static void
handle_accept (int listener, WSServer * server)
{
  WSClient *client = ((void*)0);
  int newfd;

  newfd = accept_client (listener, &server->colist);
  if (newfd == -1)
    return;

  client = ws_get_client_from_list (newfd, &server->colist);
  if (newfd > FD_SETSIZE - 1) {
    LOG (("Too busy: %d %s.\n", newfd, client->remote_ip));

    http_error (client, WS_TOO_BUSY_STR);
    handle_read_close (newfd, client, server);
    return;
  }






  LOG (("Accepted: %d %s\n", newfd, client->remote_ip));
}
