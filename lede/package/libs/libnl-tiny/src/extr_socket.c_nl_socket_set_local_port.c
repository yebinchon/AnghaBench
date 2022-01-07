
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ nl_pid; } ;
struct nl_sock {int s_flags; TYPE_1__ s_local; } ;


 int NL_OWN_PORT ;
 scalar_t__ generate_local_port () ;
 int release_local_port (scalar_t__) ;

void nl_socket_set_local_port(struct nl_sock *sk, uint32_t port)
{
 if (port == 0) {
  port = generate_local_port();
  sk->s_flags &= ~NL_OWN_PORT;
 } else {
  if (!(sk->s_flags & NL_OWN_PORT))
   release_local_port(sk->s_local.nl_pid);
  sk->s_flags |= NL_OWN_PORT;
 }

 sk->s_local.nl_pid = port;
}
