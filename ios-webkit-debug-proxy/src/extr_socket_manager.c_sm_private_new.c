
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sm_private {int dummy; } ;
typedef TYPE_2__* sm_private_t ;
typedef int fd_set ;
struct TYPE_6__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_7__ {char* tmp_buf; int max_fd; size_t tmp_buf_length; TYPE_1__ timeout; int * tmp_fail_fds; int * tmp_recv_fds; int * tmp_send_fds; int * recv_fds; int * send_fds; int * server_fds; int * all_fds; void* fd_to_sendq; void* fd_to_value; void* fd_to_ssl; } ;


 int FD_ZERO (int *) ;
 int HT_INT_KEYS ;
 int SIZEOF_FD_SET ;
 scalar_t__ calloc (size_t,int) ;
 void* ht_new (int ) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int sm_private_free (TYPE_2__*) ;

sm_private_t sm_private_new(size_t buf_length) {
  sm_private_t my = (sm_private_t)malloc(sizeof(struct sm_private));
  if (!my) {
    return ((void*)0);
  }
  memset(my, 0, sizeof(struct sm_private));
  my->all_fds = (fd_set *)malloc(SIZEOF_FD_SET);
  my->server_fds = (fd_set *)malloc(SIZEOF_FD_SET);
  my->send_fds = (fd_set *)malloc(SIZEOF_FD_SET);
  my->recv_fds = (fd_set *)malloc(SIZEOF_FD_SET);
  my->tmp_send_fds = (fd_set *)malloc(SIZEOF_FD_SET);
  my->tmp_recv_fds = (fd_set *)malloc(SIZEOF_FD_SET);
  my->tmp_fail_fds = (fd_set *)malloc(SIZEOF_FD_SET);
  my->fd_to_ssl = ht_new(HT_INT_KEYS);
  my->fd_to_value = ht_new(HT_INT_KEYS);
  my->fd_to_sendq = ht_new(HT_INT_KEYS);
  my->tmp_buf = (char *)calloc(buf_length, sizeof(char *));
  if (!my->tmp_buf || !my->all_fds || !my->server_fds ||
      !my->send_fds || !my->recv_fds ||
      !my->tmp_send_fds || !my->tmp_recv_fds || !my->tmp_fail_fds ||
      !my->fd_to_ssl || !my->fd_to_value || !my->fd_to_sendq) {
    sm_private_free(my);
    return ((void*)0);
  }
  FD_ZERO(my->all_fds);
  FD_ZERO(my->server_fds);
  FD_ZERO(my->send_fds);
  FD_ZERO(my->recv_fds);
  FD_ZERO(my->tmp_send_fds);
  FD_ZERO(my->tmp_recv_fds);
  FD_ZERO(my->tmp_fail_fds);
  my->max_fd = -1;
  my->timeout.tv_sec = 5;
  my->timeout.tv_usec = 0;
  my->tmp_buf_length = buf_length;
  return my;
}
