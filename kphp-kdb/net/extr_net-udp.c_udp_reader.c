
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_socket {int flags; int fd; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ ENOSYS ;
 int U_ERRQ ;
 int U_NORD ;
 scalar_t__ errno ;
 int udp_try_read (struct udp_socket*,int) ;
 int vkprintf (int,char*,int ,int,...) ;

int udp_reader (struct udp_socket *u) {
  int tot_rcv = 0, tot_rcv_err = 0, have_errors = (u->flags & U_ERRQ);
  vkprintf (2, "in udp_reader(%d,%d)\n", u->fd, have_errors);
  while (!(u->flags & U_NORD) || have_errors) {
    int res = udp_try_read (u, have_errors);
    if (res < 0) {
      if (errno == ENOSYS || errno == EINTR) {
 continue;
      }
      if (errno == EAGAIN) {
 if (have_errors) {
   have_errors = 0;
   continue;
 }
 u->flags |= U_NORD;
 break;
      }
      have_errors = U_ERRQ;
      continue;


    } else if (!res) {
      if (have_errors) {
 have_errors = 0;
 continue;
      }
      u->flags |= U_NORD;
      break;
    } else {
      tot_rcv += res;
      if (have_errors) {
 tot_rcv_err += res;
      }
    }
  }
  u->flags = (u->flags & ~U_ERRQ) | have_errors;
  vkprintf (2, "udp_reader(%d): %d packets received, %d error packets\n", u->fd, tot_rcv, tot_rcv_err);
  return tot_rcv;
}
