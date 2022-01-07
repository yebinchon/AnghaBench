
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ uv_handle_t ;
struct TYPE_5__ {int client; } ;
typedef TYPE_2__ conn ;


 int do_next (int ) ;

__attribute__((used)) static void conn_close_done(uv_handle_t *handle) {
  conn *c;

  c = handle->data;
  do_next(c->client);
}
