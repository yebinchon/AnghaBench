
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nl_pid; } ;
struct nl_sock {scalar_t__ s_fd; int s_flags; int s_cb; TYPE_1__ s_local; } ;


 int NL_OWN_PORT ;
 int close (scalar_t__) ;
 int free (struct nl_sock*) ;
 int nl_cb_put (int ) ;
 int release_local_port (int ) ;

void nl_socket_free(struct nl_sock *sk)
{
 if (!sk)
  return;

 if (sk->s_fd >= 0)
  close(sk->s_fd);

 if (!(sk->s_flags & NL_OWN_PORT))
  release_local_port(sk->s_local.nl_pid);

 nl_cb_put(sk->s_cb);
 free(sk);
}
