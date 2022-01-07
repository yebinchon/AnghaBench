
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ total_bytes; scalar_t__ unprocessed_bytes; } ;
struct connection {scalar_t__ generation; int fd; int status; int flags; int write_low_watermark; TYPE_2__ Out; TYPE_1__* first_query; } ;
struct TYPE_3__ {scalar_t__ req_generation; struct connection* requester; } ;


 int C_STOPREAD ;
 scalar_t__ FORWARD_HIGH_WATERMARK ;
 int FORWARD_LOW_WATERMARK ;
 int assert (struct connection*) ;
 int conn_wait_net ;
 int create_reverse_watermark_query (struct connection*,struct connection*) ;
 int fprintf (int ,char*,int,int,scalar_t__,scalar_t__) ;
 int stderr ;
 scalar_t__ verbosity ;

int stop_forwarding_response (struct connection *c) {
  struct connection *d = c->first_query->requester;
  assert (d);
  if (d->generation != c->first_query->req_generation || d->Out.total_bytes + d->Out.unprocessed_bytes <= FORWARD_HIGH_WATERMARK) {
    return 0;
  }

  if (verbosity > 0) {
    fprintf (stderr, "forwarding response from outbound connection %d to connection %d stopped: already %d+%d bytes in output buffers.\n", c->fd, d->fd, d->Out.total_bytes, d->Out.unprocessed_bytes);
  }
  d->write_low_watermark = FORWARD_LOW_WATERMARK;
  c->flags |= C_STOPREAD;
  create_reverse_watermark_query (d, c);
  c->status = conn_wait_net;
  return 1;
}
