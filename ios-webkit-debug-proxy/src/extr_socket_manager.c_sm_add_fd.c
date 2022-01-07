
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sm_t ;
typedef int sm_status ;
typedef TYPE_2__* sm_private_t ;
struct TYPE_6__ {int max_fd; int server_fds; int tmp_fail_fds; int tmp_recv_fds; int tmp_send_fds; int recv_fds; int send_fds; int all_fds; int fd_to_ssl; int fd_to_value; } ;
struct TYPE_5__ {TYPE_2__* private_state; } ;


 int FD_CLR (int,int ) ;
 scalar_t__ FD_ISSET (int,int ) ;
 int FD_SET (int,int ) ;
 int HT_KEY (int) ;
 int SM_ERROR ;
 int SM_SUCCESS ;
 scalar_t__ ht_put (int ,int ,void*) ;
 int sm_on_debug (TYPE_1__*,char*,char*,int) ;

sm_status sm_add_fd(sm_t self, int fd, void *ssl_session, void *value,
    bool is_server) {
  sm_private_t my = self->private_state;
  if (FD_ISSET(fd, my->all_fds)) {
    return SM_ERROR;
  }
  if (ht_put(my->fd_to_value, HT_KEY(fd), value)) {

    return SM_ERROR;
  }
  if (ssl_session != ((void*)0) && ht_put(my->fd_to_ssl, HT_KEY(fd), ssl_session)) {
    return SM_ERROR;
  }

  sm_on_debug(self, "ss.add%s_fd(%d)", (is_server ? "_server" : ""), fd);
  FD_SET(fd, my->all_fds);
  FD_CLR(fd, my->send_fds);
  FD_SET(fd, my->recv_fds);
  FD_CLR(fd, my->tmp_send_fds);
  FD_CLR(fd, my->tmp_recv_fds);
  FD_CLR(fd, my->tmp_fail_fds);
  if (is_server) {
    FD_SET(fd, my->server_fds);
  }
  if (fd > my->max_fd) {
    my->max_fd = fd;
  }
  return SM_SUCCESS;
}
