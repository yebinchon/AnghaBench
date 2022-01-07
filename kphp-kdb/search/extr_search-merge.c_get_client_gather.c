
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gather_data {TYPE_1__* c; } ;
struct connection {scalar_t__ master_generation; int fd; TYPE_1__* master; struct gather_data* gather; scalar_t__ unread_res_bytes; } ;
struct TYPE_2__ {scalar_t__ generation; int fd; } ;


 int fprintf (int ,char*,int,int) ;
 int stderr ;
 scalar_t__ verbosity ;

struct gather_data *get_client_gather (struct connection *c) {
  if (c->unread_res_bytes && c->gather && c->master && c->gather->c == c->master && c->master->generation == c->master_generation) {
    return c->gather;
  }
  if (verbosity > 0 && c->unread_res_bytes && c->gather) {
    fprintf (stderr, "connection %d: orphaned by master connection %d\n", c->fd, c->master ? c->master->fd : -1);
  }
  c->gather = 0;
  c->master = 0;
  c->master_generation = 0;
  return 0;
}
