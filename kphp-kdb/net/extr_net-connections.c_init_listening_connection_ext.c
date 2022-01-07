
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int fd; int flags; int status; int basic_type; void* extra; int * type; } ;
typedef int conn_type_t ;


 int C_IPV6 ;
 int C_NOQACK ;
 int C_RAWMSG ;
 int C_SPECIAL ;
 struct connection* Connections ;
 int EVT_LEVEL ;
 int EVT_RWX ;
 int MAX_CONNECTIONS ;
 int SM_IPV6 ;
 int SM_LOWPRIO ;
 int SM_NOQACK ;
 int SM_RAWMSG ;
 int SM_SPECIAL ;
 int accept_new_connections_gateway ;
 scalar_t__ check_conn_functions (int *) ;
 int conn_listen ;
 int ct_listen ;
 int disable_qack (int) ;
 int epoll_insert (int,int) ;
 int epoll_sethandler (int,int,int ,struct connection*) ;
 int listening_connections ;
 int max_connection ;
 int memset (struct connection*,int ,int) ;

int init_listening_connection_ext (int fd, conn_type_t *type, void *extra, int mode, int prio) {
  if (check_conn_functions (type) < 0) {
    return -1;
  }
  if (fd >= MAX_CONNECTIONS) {
    return -1;
  }
  if (fd > max_connection) {
    max_connection = fd;
  }
  struct connection *c = Connections + fd;

  memset (c, 0, sizeof (struct connection));

  c->fd = fd;
  c->type = type;
  c->extra = extra;
  c->basic_type = ct_listen;
  c->status = conn_listen;

  if ((mode & SM_LOWPRIO)) {
    prio = 10;
  }

  epoll_sethandler (fd, prio, accept_new_connections_gateway, c);


  epoll_insert (fd, EVT_RWX | EVT_LEVEL);


  if ((mode & SM_SPECIAL)) {
    c->flags |= C_SPECIAL;
  }

  if ((mode & SM_NOQACK)) {
    c->flags |= C_NOQACK;
    disable_qack (c->fd);
  }

  if ((mode & SM_IPV6)) {
    c->flags |= C_IPV6;
  }

  if ((mode & SM_RAWMSG)) {
    c->flags |= C_RAWMSG;
  }

  listening_connections++;

  return 0;
}
