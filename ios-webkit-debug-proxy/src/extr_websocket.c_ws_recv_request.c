
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* ws_t ;
typedef int ws_state ;
typedef TYPE_3__* ws_private_t ;
struct TYPE_8__ {TYPE_1__* in; } ;
struct TYPE_7__ {TYPE_3__* private_state; } ;
struct TYPE_6__ {char* in_head; char const* in_tail; } ;


 int STATE_ERROR ;
 int STATE_READ_HTTP_HEADERS ;
 int strnstr (char const*,char*,size_t) ;
 scalar_t__ ws_read_http_request (TYPE_2__*) ;

ws_state ws_recv_request(ws_t self) {
  ws_private_t my = self->private_state;
  const char *in_head = my->in->in_head;
  size_t in_length = my->in->in_tail - in_head;

  if (!strnstr(in_head, "\r\n", in_length)) {

    return -1;
  }

  if (ws_read_http_request(self)) {
    return STATE_ERROR;
  }

  return STATE_READ_HTTP_HEADERS;
}
