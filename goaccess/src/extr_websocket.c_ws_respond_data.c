
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSClient ;


 scalar_t__ EAGAIN ;
 scalar_t__ EPIPE ;
 scalar_t__ EWOULDBLOCK ;
 int WS_CLOSE ;
 int WS_ERR ;
 scalar_t__ errno ;
 int send_buffer (int *,char const*,int) ;
 int ws_queue_sockbuf (int *,char const*,int,int) ;
 int ws_set_status (int *,int,int) ;

__attribute__((used)) static int
ws_respond_data (WSClient * client, const char *buffer, int len)
{
  int bytes = 0;

  bytes = send_buffer (client, buffer, len);
  if (bytes == -1 && errno == EPIPE)
    return ws_set_status (client, WS_ERR | WS_CLOSE, bytes);


  if (bytes < len || (bytes == -1 && (errno == EAGAIN || errno == EWOULDBLOCK)))
    ws_queue_sockbuf (client, buffer, len, bytes);

  return bytes;
}
