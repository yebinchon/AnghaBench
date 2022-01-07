
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int fd; scalar_t__ state; int Out; TYPE_1__* ev; } ;
struct TYPE_2__ {int state; int ready; } ;
typedef TYPE_1__ event_t ;


 int EVT_WRITE ;
 int MSG_DONTWAIT ;
 int advance_read_ptr (int *,int) ;
 int fprintf (int ,char*,int,int,int,char*) ;
 char* get_read_ptr (int *) ;
 int get_ready_bytes (int *) ;
 int perror (char*) ;
 int send (int,char*,int,int ) ;
 int stderr ;
 scalar_t__ verbosity ;

int server_writer (struct connection *c) {
  int r, s, fd = c->fd;
  event_t *ev = c->ev;

  if (c->state > 0) {

    s = get_ready_bytes (&c->Out);

    while ((s = get_ready_bytes (&c->Out)) && (!(ev->state & EVT_WRITE) || (ev->ready & EVT_WRITE))) {
      char *to = get_read_ptr (&c->Out);

      r = send (fd, to, s, MSG_DONTWAIT);

      if (verbosity > 0) {
 fprintf (stderr, "send() to %d: %d written out of %d at %p\n", fd, r, s, to);
 if (r < 0) perror ("send()");
      }

      if (r > 0) {
 advance_read_ptr (&c->Out, r);
      }

      if (r < s) {
 ev->ready &= ~EVT_WRITE;
 break;
      }
    }

    if (s > 0) return EVT_WRITE;

    c->state = 0;
  }
  return 0;
}
