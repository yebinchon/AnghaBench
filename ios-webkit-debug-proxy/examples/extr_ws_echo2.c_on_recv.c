
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ws_t ;
typedef int ssize_t ;
typedef int sm_t ;
typedef int sm_status ;
typedef TYPE_2__* my_t ;
struct TYPE_5__ {TYPE_1__* ws; } ;
struct TYPE_4__ {int (* on_recv ) (TYPE_1__*,char const*,int ) ;} ;


 int stub1 (TYPE_1__*,char const*,int ) ;

sm_status on_recv(sm_t sm, int fd, void *value,
    const char *buf, ssize_t length) {
  ws_t ws = ((my_t)value)->ws;
  return ws->on_recv(ws, buf, length);
}
