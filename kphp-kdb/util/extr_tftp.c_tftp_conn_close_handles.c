
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ h_idx; } ;
struct TYPE_7__ {TYPE_5__ timer; } ;
struct TYPE_6__ {int fd; int * name; } ;
struct TYPE_8__ {TYPE_2__ resend; int * netascii; int * iobuff; TYPE_1__ file; } ;
typedef TYPE_3__ tftp_connection_t ;


 int assert (int) ;
 int close (int) ;
 int free (int *) ;
 int remove_event_timer (TYPE_5__*) ;
 scalar_t__ strlen (int *) ;
 int zfree (int *,scalar_t__) ;

__attribute__((used)) static void tftp_conn_close_handles (tftp_connection_t *c) {
  if (c->file.fd >= 0) {
    assert (!close (c->file.fd));
    c->file.fd = -1;
  }
  if (c->file.name) {
    zfree (c->file.name, strlen (c->file.name) + 1);
    c->file.name = ((void*)0);
  }
  if (c->iobuff != ((void*)0)) {
    free (c->iobuff);
    c->iobuff = ((void*)0);
  }
  if (c->netascii) {
    free (c->netascii);
    c->netascii = ((void*)0);
  }
  if (c->resend.timer.h_idx) {
    remove_event_timer (&c->resend.timer);
  }
}
