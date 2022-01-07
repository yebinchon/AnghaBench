
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rdstate; scalar_t__ wrstate; scalar_t__ result; } ;
typedef TYPE_1__ conn ;
struct TYPE_7__ {TYPE_1__ incoming; } ;
typedef TYPE_2__ client_ctx ;


 int ASSERT (int) ;
 scalar_t__ c_done ;
 scalar_t__ c_stop ;
 int conn_read (TYPE_1__*) ;
 int do_kill (TYPE_2__*) ;
 int pr_err (char*,int ) ;
 int s_req_parse ;
 int uv_strerror (scalar_t__) ;

__attribute__((used)) static int do_req_start(client_ctx *cx) {
  conn *incoming;

  incoming = &cx->incoming;
  ASSERT(incoming->rdstate == c_stop);
  ASSERT(incoming->wrstate == c_done);
  incoming->wrstate = c_stop;

  if (incoming->result < 0) {
    pr_err("write error: %s", uv_strerror(incoming->result));
    return do_kill(cx);
  }

  conn_read(incoming);
  return s_req_parse;
}
