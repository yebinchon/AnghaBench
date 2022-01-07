
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int loop; int idle_timeout; } ;
typedef TYPE_2__ server_ctx ;
struct TYPE_8__ {int tcp; } ;
struct TYPE_10__ {int timer_handle; TYPE_1__ handle; int idle_timeout; void* wrstate; void* rdstate; scalar_t__ result; TYPE_4__* client; } ;
typedef TYPE_3__ conn ;
struct TYPE_11__ {TYPE_2__* sx; TYPE_3__ outgoing; TYPE_3__ incoming; int parser; int state; } ;
typedef TYPE_4__ client_ctx ;


 int CHECK (int) ;
 void* c_stop ;
 int conn_read (TYPE_3__*) ;
 int s5_init (int *) ;
 int s_handshake ;
 scalar_t__ uv_tcp_init (int ,int *) ;
 scalar_t__ uv_timer_init (int ,int *) ;

void client_finish_init(server_ctx *sx, client_ctx *cx) {
  conn *incoming;
  conn *outgoing;

  cx->sx = sx;
  cx->state = s_handshake;
  s5_init(&cx->parser);

  incoming = &cx->incoming;
  incoming->client = cx;
  incoming->result = 0;
  incoming->rdstate = c_stop;
  incoming->wrstate = c_stop;
  incoming->idle_timeout = sx->idle_timeout;
  CHECK(0 == uv_timer_init(sx->loop, &incoming->timer_handle));

  outgoing = &cx->outgoing;
  outgoing->client = cx;
  outgoing->result = 0;
  outgoing->rdstate = c_stop;
  outgoing->wrstate = c_stop;
  outgoing->idle_timeout = sx->idle_timeout;
  CHECK(0 == uv_tcp_init(cx->sx->loop, &outgoing->handle.tcp));
  CHECK(0 == uv_timer_init(cx->sx->loop, &outgoing->timer_handle));


  conn_read(incoming);
}
