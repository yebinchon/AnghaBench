
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct connection {size_t fd; int generation; } ;
struct TYPE_4__ {int generation; } ;
typedef TYPE_1__ host_t ;


 TYPE_1__** CONN_FD_HOST ;
 size_t MAX_CONNECTIONS ;
 int vkprintf (int,char*,size_t,...) ;

host_t *get_host_by_connection (struct connection *c) {
  if (c->fd < 0 || c->fd >= MAX_CONNECTIONS) {
    return ((void*)0);
  }
  host_t *H = CONN_FD_HOST[c->fd];
  if (H == ((void*)0)) {
    vkprintf (3, "CONN_FD_HOST[%d] = NULL\n", c->fd);
    return ((void*)0);
  }
  if (H->generation != c->generation) {
    vkprintf (3, "H->generation (%d) != c->generation (%d)\n", H->generation, c->generation);
    return CONN_FD_HOST[c->fd] = ((void*)0);
  }
  return H;
}
