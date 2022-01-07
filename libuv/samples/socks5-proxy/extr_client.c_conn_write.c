
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* base; unsigned int len; } ;
typedef TYPE_2__ uv_buf_t ;
struct TYPE_7__ {int stream; } ;
struct TYPE_9__ {scalar_t__ wrstate; TYPE_1__ handle; int write_req; } ;
typedef TYPE_3__ conn ;


 int ASSERT (int) ;
 int CHECK (int) ;
 scalar_t__ c_busy ;
 scalar_t__ c_done ;
 scalar_t__ c_stop ;
 int conn_timer_reset (TYPE_3__*) ;
 int conn_write_done ;
 scalar_t__ uv_write (int *,int *,TYPE_2__*,int,int ) ;

__attribute__((used)) static void conn_write(conn *c, const void *data, unsigned int len) {
  uv_buf_t buf;

  ASSERT(c->wrstate == c_stop || c->wrstate == c_done);
  c->wrstate = c_busy;




  buf.base = (char *) data;
  buf.len = len;

  CHECK(0 == uv_write(&c->write_req,
                      &c->handle.stream,
                      &buf,
                      1,
                      conn_write_done));
  conn_timer_reset(c);
}
