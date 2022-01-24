#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct socket {scalar_t__ type; int /*<<< orphan*/ * ops; } ;
struct sock {int /*<<< orphan*/  sk_destruct; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PF_ALG ; 
 scalar_t__ SOCK_SEQPACKET ; 
 int /*<<< orphan*/  alg_proto ; 
 int /*<<< orphan*/  alg_proto_ops ; 
 int /*<<< orphan*/  alg_sock_destruct ; 
 struct sock* FUNC0 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,struct sock*) ; 

__attribute__((used)) static int FUNC2(struct net *net, struct socket *sock, int protocol,
		      int kern)
{
	struct sock *sk;
	int err;

	if (sock->type != SOCK_SEQPACKET)
		return -ESOCKTNOSUPPORT;
	if (protocol != 0)
		return -EPROTONOSUPPORT;

	err = -ENOMEM;
	sk = FUNC0(net, PF_ALG, GFP_KERNEL, &alg_proto, kern);
	if (!sk)
		goto out;

	sock->ops = &alg_proto_ops;
	FUNC1(sock, sk);

	sk->sk_destruct = alg_sock_destruct;

	return 0;
out:
	return err;
}