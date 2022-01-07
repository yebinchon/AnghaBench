
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int listener; } ;
typedef TYPE_1__ WSClient ;


 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 int WS_CLOSE ;
 int WS_ERR ;
 int WS_READING ;
 scalar_t__ errno ;
 int recv (int ,char*,int,int ) ;
 int ws_set_status (TYPE_1__*,int,int) ;

__attribute__((used)) static int
read_plain_socket (WSClient * client, char *buffer, int size)
{
  int bytes = 0;

  bytes = recv (client->listener, buffer, size, 0);

  if (bytes == -1 && (errno == EAGAIN || errno == EWOULDBLOCK))
    return ws_set_status (client, WS_READING, bytes);
  else if (bytes == -1 || bytes == 0)
    return ws_set_status (client, WS_ERR | WS_CLOSE, bytes);

  return bytes;
}
