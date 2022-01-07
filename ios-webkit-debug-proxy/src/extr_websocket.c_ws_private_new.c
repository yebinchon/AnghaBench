
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ws_private_t ;
struct ws_private {int dummy; } ;
struct TYPE_4__ {int state; void* data; void* out; void* in; } ;


 int STATE_READ_HTTP_REQUEST ;
 void* cb_new () ;
 int malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;

ws_private_t ws_private_new() {
  ws_private_t my = (ws_private_t)malloc(sizeof(struct ws_private));
  if (my) {
    memset(my, 0, sizeof(struct ws_private));
    my->in = cb_new();
    my->out = cb_new();
    my->data = cb_new();
    my->state = STATE_READ_HTTP_REQUEST;
  }
  return my;
}
