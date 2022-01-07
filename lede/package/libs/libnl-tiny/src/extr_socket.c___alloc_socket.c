
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nl_pid; void* nl_family; } ;
struct TYPE_3__ {void* nl_family; } ;
struct nl_sock {int s_fd; TYPE_2__ s_local; int s_seq_next; int s_seq_expect; TYPE_1__ s_peer; struct nl_cb* s_cb; } ;
struct nl_cb {int dummy; } ;


 void* AF_NETLINK ;
 scalar_t__ UINT_MAX ;
 struct nl_sock* calloc (int,int) ;
 scalar_t__ generate_local_port () ;
 int nl_socket_free (struct nl_sock*) ;
 int time (int ) ;

__attribute__((used)) static struct nl_sock *__alloc_socket(struct nl_cb *cb)
{
 struct nl_sock *sk;

 sk = calloc(1, sizeof(*sk));
 if (!sk)
  return ((void*)0);

 sk->s_fd = -1;
 sk->s_cb = cb;
 sk->s_local.nl_family = AF_NETLINK;
 sk->s_peer.nl_family = AF_NETLINK;
 sk->s_seq_expect = sk->s_seq_next = time(0);
 sk->s_local.nl_pid = generate_local_port();
 if (sk->s_local.nl_pid == UINT_MAX) {
  nl_socket_free(sk);
  return ((void*)0);
 }

 return sk;
}
