
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* ws_t ;
struct my_struct {int dummy; } ;
typedef TYPE_2__* my_t ;
struct TYPE_8__ {int fd; int port; TYPE_1__* ws; } ;
struct TYPE_7__ {TYPE_2__* state; int on_frame; int on_upgrade; int on_http_request; int send_data; } ;


 int free (TYPE_1__*) ;
 int malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int on_frame ;
 int on_http_request ;
 int on_upgrade ;
 int send_data ;
 TYPE_1__* ws_new () ;

my_t my_new(int fd, int port) {
  my_t my = (my_t)malloc(sizeof(struct my_struct));
  ws_t ws = ws_new();
  if (!ws || !my) {
    free(ws);
    return ((void*)0);
  }
  memset(my, 0, sizeof(struct my_struct));
  my->fd = fd;
  my->port = port;
  my->ws = ws;
  ws->send_data = send_data;
  ws->on_http_request = on_http_request;
  ws->on_upgrade = on_upgrade;
  ws->on_frame = on_frame;
  ws->state = my;
  return my;
}
