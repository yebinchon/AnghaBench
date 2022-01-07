
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int flags; scalar_t__ status; int pending_queries; int fd; TYPE_1__* type; scalar_t__ error; int Out; int In; scalar_t__ crypto; scalar_t__ skip_bytes; TYPE_2__* ev; int ready; struct conn_target* target; } ;
struct conn_target {int active_outbound_connections; int port; int target; } ;
struct TYPE_4__ {int epoll_ready; int ready; scalar_t__ data; int state; } ;
typedef TYPE_2__ event_t ;
struct TYPE_3__ {scalar_t__ (* crypto_encrypt_output ) (struct connection*) ;int (* writer ) (struct connection*) ;int (* reader ) (struct connection*) ;int (* close ) (struct connection*,int ) ;int (* flush ) (struct connection*) ;int (* wakeup ) (struct connection*) ;int (* alarm ) (struct connection*) ;int (* check_ready ) (struct connection*) ;int (* connected ) (struct connection*) ;} ;


 int C_ALARM ;
 int C_DFLUSH ;
 int C_FAILED ;
 int C_INCONN ;
 int C_NORD ;
 int C_NOWR ;
 int C_PERMANENT ;
 int C_RAWMSG ;
 int C_REPARSE ;
 int C_SPECIAL ;
 int C_STOPREAD ;
 int C_WANTRD ;
 int C_WANTWR ;
 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLRDHUP ;
 int EVA_DESTROY ;
 int EVT_SPEC ;
 int EVT_WRITE ;
 int active_connections ;
 int active_outbound_connections ;
 int assert (int) ;
 int clear_connection_timeout (struct connection*) ;
 int close_special_connection (struct connection*) ;
 int compute_conn_events (struct connection*) ;
 scalar_t__ conn_connecting ;
 scalar_t__ conn_error ;
 scalar_t__ conn_expect_query ;
 scalar_t__ conn_reading_answer ;
 scalar_t__ conn_reading_query ;
 scalar_t__ conn_wait_aio ;
 scalar_t__ conn_wait_answer ;
 scalar_t__ conn_wait_net ;
 scalar_t__ conn_write_close ;
 int force_clear_connection (struct connection*) ;
 int free_unused_buffers (int *) ;
 int inet_ntoa (int ) ;
 int kprintf (char*,int ) ;
 int memset (struct connection*,int ,int) ;
 scalar_t__ out_total_processed_bytes (struct connection*) ;
 scalar_t__ out_total_unprocessed_bytes (struct connection*) ;
 int stub1 (struct connection*) ;
 int stub10 (struct connection*) ;
 int stub11 (struct connection*) ;
 scalar_t__ stub12 (struct connection*) ;
 int stub13 (struct connection*) ;
 int stub14 (struct connection*,int ) ;
 int stub2 (struct connection*) ;
 int stub3 (struct connection*) ;
 int stub4 (struct connection*) ;
 int stub5 (struct connection*) ;
 int stub6 (struct connection*) ;
 scalar_t__ stub7 (struct connection*) ;
 int stub8 (struct connection*) ;
 int stub9 (struct connection*) ;
 int vkprintf (int,char*,int,...) ;

int server_read_write (struct connection *c) {
  int res, inconn_mask = c->flags | ~C_INCONN;
  event_t *ev = c->ev;

  vkprintf (2, "BEGIN processing connection %d, status=%d, flags=%d, pending=%d; epoll_ready=%d, ev->ready=%d\n", c->fd, c->status, c->flags, c->pending_queries, ev->epoll_ready, ev->ready);

  c->flags |= C_INCONN;

  if (ev->epoll_ready & (EPOLLHUP | EPOLLERR | EPOLLRDHUP)) {
    vkprintf (1, "socket %d: disconnected, cleaning\n", c->fd);
    force_clear_connection (c);
    return EVA_DESTROY;
  }






  if (c->status == conn_connecting) {
    if (ev->ready & EVT_WRITE) {
      vkprintf (1, "socket #%d to %s:%d becomes active\n", c->fd, inet_ntoa(c->target->target), c->target->port);
      struct conn_target *S = c->target;
      S->active_outbound_connections++;
      active_outbound_connections++;
      active_connections++;
      c->status = conn_wait_answer;
      c->flags = (c->flags & C_PERMANENT) | C_WANTRD | C_INCONN;
      c->type->connected (c);

      if (out_total_processed_bytes (c) > 0) {
        c->flags |= C_WANTWR;
      }
      c->type->check_ready (c);

      vkprintf (2, "socket #%d: ready=%d\n", c->fd, c->ready);
    }
    if (c->status == conn_connecting) {
      c->flags &= inconn_mask;
      kprintf ("socket #%d: unknown event before connecting (?)\n", c->fd);
      return EVT_SPEC;
    }
  }



  if (c->flags & C_ALARM) {
    c->flags &= ~C_ALARM;
    c->type->alarm(c);
  }

  if (c->status == conn_wait_net && !c->pending_queries) {
    c->type->wakeup(c);
  }

  if (c->status == conn_wait_aio && !c->pending_queries) {
    c->type->wakeup(c);
  }

  if (c->flags & C_DFLUSH) {
    c->flags &= ~C_DFLUSH;
    c->type->flush (c);
    if (c->crypto && out_total_unprocessed_bytes (c) > 0) {
      assert (c->type->crypto_encrypt_output (c) >= 0);
    }
    if (out_total_processed_bytes (c) > 0) {
      c->flags |= C_WANTWR;
    }
  }





  while (
  ((c->flags & C_WANTRD) && !(c->flags & (C_NORD | C_FAILED | C_STOPREAD))) ||
  ((c->flags & C_WANTWR) && !(c->flags & (C_NOWR | C_FAILED))) ||
  ((c->flags & C_REPARSE) && (c->status == conn_expect_query || c->status == conn_reading_query || c->status == conn_wait_answer || c->status == conn_reading_answer))
  ) {

    if (c->error) {
      break;
    }

    if (out_total_processed_bytes (c) + out_total_unprocessed_bytes (c) > 0) {
      res = c->type->writer (c);
    }

    res = c->type->reader (c);
    vkprintf (2, "server_reader=%d, ready=%02x, state=%02x\n", res, c->ev->ready, c->ev->state);
    if (res || c->skip_bytes) {

      break;
    }

    if (out_total_processed_bytes (c) > 0) {
      c->flags |= C_WANTWR;
      res = c->type->writer(c);
    }
  }

  if (c->flags & C_DFLUSH) {
    c->flags &= ~C_DFLUSH;
    c->type->flush (c);
    if (c->crypto && out_total_unprocessed_bytes (c) > 0) {
      assert (c->type->crypto_encrypt_output (c) >= 0);
    }
  }

  if (out_total_processed_bytes (c) > 0) {
    c->flags |= C_WANTWR;
    c->type->writer(c);
    if (!(c->flags & C_RAWMSG)) {
      free_unused_buffers(&c->In);
      free_unused_buffers(&c->Out);
    }
  }

  if (c->error || c->status == conn_error || (c->status == conn_write_close && !(c->flags & C_WANTWR)) || (c->flags & C_FAILED)) {
    vkprintf (1, "socket %d: closing and cleaning (error code=%d)\n", c->fd, c->error);

    if (c->status != conn_connecting) {
      active_connections--;
      if (c->flags & C_SPECIAL) {
 close_special_connection (c);
      }
    }
    c->type->close (c, 0);
    clear_connection_timeout (c);

    memset (c, 0, sizeof (struct connection));
    ev->data = 0;

    return EVA_DESTROY;
  }



  c->flags &= inconn_mask;

  vkprintf (2, "END processing connection %d, status=%d, flags=%d, pending=%d\n", c->fd, c->status, c->flags, c->pending_queries);

  return compute_conn_events (c);
}
