
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int unreliability; int ready; int flags; int status; int fd; } ;


 int * R_end ;

void store_connection (struct connection *c) {
  R_end[0] = c->fd;
  R_end[1] = c->status;
  R_end[2] = c->flags;
  R_end[3] = c->ready;
  R_end[4] = c->unreliability;
  R_end += 5;
}
