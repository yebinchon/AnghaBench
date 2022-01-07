
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int colist; int pipeout; int (* onopen ) (int ,TYPE_2__*) ;} ;
typedef TYPE_1__ WSServer ;
struct TYPE_18__ {int status; int end_proc; TYPE_4__* headers; } ;
typedef TYPE_2__ WSClient ;
struct TYPE_20__ {char* buf; int buflen; scalar_t__ reading; } ;
struct TYPE_19__ {scalar_t__ accesslog; int echomode; scalar_t__ strict; } ;


 scalar_t__ BUFSIZ ;
 int LOG (char*) ;
 int WS_BAD_REQUEST_STR ;
 int WS_CLOSE ;
 int WS_OK ;
 int WS_READING ;
 int access_log (TYPE_2__*,int) ;
 int gettimeofday (int *,int *) ;
 int http_error (TYPE_2__*,int ) ;
 int list_count (int ) ;
 TYPE_4__* new_wsheader () ;
 scalar_t__ parse_headers (TYPE_4__*) ;
 int read_socket (TYPE_2__*,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;
 int * strstr (char*,char*) ;
 int stub1 (int ,TYPE_2__*) ;
 int ws_send_handshake_headers (TYPE_2__*,TYPE_4__*) ;
 int ws_set_handshake_headers (TYPE_4__*) ;
 int ws_set_status (TYPE_2__*,int,int) ;
 scalar_t__ ws_verify_req_headers (TYPE_4__*) ;
 TYPE_3__ wsconfig ;

__attribute__((used)) static int
ws_get_handshake (WSClient * client, WSServer * server)
{
  int bytes = 0, readh = 0;
  char *buf = ((void*)0);

  if (client->headers == ((void*)0))
    client->headers = new_wsheader ();

  buf = client->headers->buf;
  readh = client->headers->buflen;

  if ((bytes = read_socket (client, buf + readh, BUFSIZ - readh)) < 1) {
    if (client->status & WS_CLOSE)
      http_error (client, WS_BAD_REQUEST_STR);
    return bytes;
  }
  client->headers->buflen += bytes;

  buf[client->headers->buflen] = '\0';


  if (strstr (buf, "\r\n\r\n") == ((void*)0)) {
    if (strlen (buf) < BUFSIZ)
      return ws_set_status (client, WS_READING, bytes);

    http_error (client, WS_BAD_REQUEST_STR);
    return ws_set_status (client, WS_CLOSE, bytes);
  }


  if (parse_headers (client->headers) != 0) {
    http_error (client, WS_BAD_REQUEST_STR);
    return ws_set_status (client, WS_CLOSE, bytes);
  }


  if (ws_verify_req_headers (client->headers) != 0) {
    http_error (client, WS_BAD_REQUEST_STR);
    return ws_set_status (client, WS_CLOSE, bytes);
  }

  ws_set_handshake_headers (client->headers);


  ws_send_handshake_headers (client, client->headers);


  if (server->onopen && wsconfig.strict && !wsconfig.echomode)
    server->onopen (server->pipeout, client);
  client->headers->reading = 0;


  gettimeofday (&client->end_proc, ((void*)0));
  if (wsconfig.accesslog)
    access_log (client, 101);
  LOG (("Active: %d\n", list_count (server->colist)));

  return ws_set_status (client, WS_OK, bytes);
}
