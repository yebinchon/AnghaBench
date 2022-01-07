
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ws_t ;
typedef int ws_status ;
struct TYPE_4__ {int (* send_upgrade ) (TYPE_1__*) ;} ;


 int stub1 (TYPE_1__*) ;

ws_status iwdp_on_upgrade(ws_t ws,
    const char *resource, const char *protocol,
    int version, const char *sec_key) {
  return ws->send_upgrade(ws);
}
