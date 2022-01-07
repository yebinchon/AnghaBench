
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {int in_bytes; scalar_t__ in_pos; scalar_t__ in_buf; } ;


 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 int START_TIMER (int ) ;
 int memcpy (char*,scalar_t__,int) ;
 int read_in ;

__attribute__((used)) static int rpc_read_in (struct rpc_server *server, char *data, int len, double timeout) {
  ADD_CNT (read_in);
  START_TIMER (read_in);
  if (len <= server->in_bytes) {
    memcpy (data, server->in_buf + server->in_pos, len);
    server->in_pos += len;
    server->in_bytes -= len;
    END_TIMER (read_in);
    return len;
  } else {
    memcpy (data, server->in_buf + server->in_pos, server->in_bytes);
    int t = server->in_bytes;
    server->in_pos = 0;
    server->in_bytes = 0;
    END_TIMER (read_in);
    return t;
  }
}
