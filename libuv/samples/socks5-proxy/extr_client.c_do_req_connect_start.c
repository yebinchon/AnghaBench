
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int addr; } ;
struct TYPE_10__ {scalar_t__ rdstate; scalar_t__ wrstate; TYPE_1__ t; } ;
typedef TYPE_2__ conn ;
struct TYPE_11__ {int sx; TYPE_2__ outgoing; TYPE_2__ incoming; } ;
typedef TYPE_3__ client_ctx ;


 int ASSERT (int) ;
 scalar_t__ c_stop ;
 int can_access (int ,TYPE_3__*,int *) ;
 int conn_connect (TYPE_2__*) ;
 int conn_write (TYPE_2__*,char*,int) ;
 int do_kill (TYPE_3__*) ;
 int pr_err (char*,int ) ;
 int pr_warn (char*) ;
 int s_kill ;
 int s_req_connect ;
 int uv_strerror (int) ;

__attribute__((used)) static int do_req_connect_start(client_ctx *cx) {
  conn *incoming;
  conn *outgoing;
  int err;

  incoming = &cx->incoming;
  outgoing = &cx->outgoing;
  ASSERT(incoming->rdstate == c_stop);
  ASSERT(incoming->wrstate == c_stop);
  ASSERT(outgoing->rdstate == c_stop);
  ASSERT(outgoing->wrstate == c_stop);

  if (!can_access(cx->sx, cx, &outgoing->t.addr)) {
    pr_warn("connection not allowed by ruleset");

    conn_write(incoming, "\5\2\0\1\0\0\0\0\0\0", 10);
    return s_kill;
  }

  err = conn_connect(outgoing);
  if (err != 0) {
    pr_err("connect error: %s\n", uv_strerror(err));
    return do_kill(cx);
  }

  return s_req_connect;
}
