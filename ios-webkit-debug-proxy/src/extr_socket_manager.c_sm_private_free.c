
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sm_private {int dummy; } ;
typedef TYPE_1__* sm_private_t ;
struct TYPE_5__ {struct TYPE_5__* tmp_buf; int fd_to_sendq; int fd_to_value; int fd_to_ssl; struct TYPE_5__* tmp_fail_fds; struct TYPE_5__* tmp_recv_fds; struct TYPE_5__* tmp_send_fds; struct TYPE_5__* recv_fds; struct TYPE_5__* send_fds; struct TYPE_5__* server_fds; struct TYPE_5__* all_fds; } ;


 int free (TYPE_1__*) ;
 int ht_free (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void sm_private_free(sm_private_t my) {
  if (my) {
    free(my->all_fds);
    free(my->server_fds);
    free(my->send_fds);
    free(my->recv_fds);
    free(my->tmp_send_fds);
    free(my->tmp_recv_fds);
    free(my->tmp_fail_fds);
    ht_free(my->fd_to_ssl);
    ht_free(my->fd_to_value);
    ht_free(my->fd_to_sendq);
    free(my->tmp_buf);
    memset(my, 0, sizeof(struct sm_private));
    free(my);
  }
}
