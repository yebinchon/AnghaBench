
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ws_t ;
typedef int ws_status ;
typedef size_t ssize_t ;
typedef TYPE_2__* my_t ;
struct TYPE_5__ {int fd; } ;
struct TYPE_4__ {scalar_t__ state; } ;


 int WS_ERROR ;
 int WS_SUCCESS ;
 size_t send (int,void*,size_t,int ) ;

ws_status send_data(ws_t ws, const char *data, size_t length) {
  int fd = ((my_t)ws->state)->fd;
  ssize_t sent_bytes = send(fd, (void*)data, length, 0);
  return (sent_bytes == length ? WS_SUCCESS : WS_ERROR);
}
