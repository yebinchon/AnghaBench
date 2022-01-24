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
struct socket {int /*<<< orphan*/  ops; int /*<<< orphan*/  state; } ;
struct sock {int dummy; } ;
struct alg_sock {unsigned int nokey_refcnt; struct af_alg_type const* type; struct sock* parent; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  private; } ;
typedef  struct af_alg_type {int (* accept ) (int /*<<< orphan*/ ,struct sock*) ;int (* accept_nokey ) (int /*<<< orphan*/ ,struct sock*) ;int /*<<< orphan*/  ops_nokey; int /*<<< orphan*/  ops; } const af_alg_type ;

/* Variables and functions */
 int EINVAL ; 
 int ENOKEY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PF_ALG ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 int /*<<< orphan*/  alg_proto ; 
 struct alg_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct socket*) ; 
 struct sock* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct sock*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct sock*) ; 

int FUNC11(struct sock *sk, struct socket *newsock, bool kern)
{
	struct alg_sock *ask = FUNC0(sk);
	const struct af_alg_type *type;
	struct sock *sk2;
	unsigned int nokey;
	int err;

	FUNC1(sk);
	type = ask->type;

	err = -EINVAL;
	if (!type)
		goto unlock;

	sk2 = FUNC5(FUNC8(sk), PF_ALG, GFP_KERNEL, &alg_proto, kern);
	err = -ENOMEM;
	if (!sk2)
		goto unlock;

	FUNC7(newsock, sk2);
	FUNC4(sk2, newsock);
	FUNC3(sk, sk2);

	err = type->accept(ask->private, sk2);

	nokey = err == -ENOKEY;
	if (nokey && type->accept_nokey)
		err = type->accept_nokey(ask->private, sk2);

	if (err)
		goto unlock;

	if (nokey || !ask->refcnt++)
		FUNC6(sk);
	ask->nokey_refcnt += nokey;
	FUNC0(sk2)->parent = sk;
	FUNC0(sk2)->type = type;
	FUNC0(sk2)->nokey_refcnt = nokey;

	newsock->ops = type->ops;
	newsock->state = SS_CONNECTED;

	if (nokey)
		newsock->ops = type->ops_nokey;

	err = 0;

unlock:
	FUNC2(sk);

	return err;
}