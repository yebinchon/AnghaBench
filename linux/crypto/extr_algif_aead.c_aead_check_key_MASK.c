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
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct alg_sock {int refcnt; struct aead_tfm* private; struct sock* parent; } ;
struct aead_tfm {int /*<<< orphan*/  aead; } ;

/* Variables and functions */
 int CRYPTO_TFM_NEED_KEY ; 
 int ENOKEY ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 struct alg_sock* FUNC0 (struct sock*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static int FUNC7(struct socket *sock)
{
	int err = 0;
	struct sock *psk;
	struct alg_sock *pask;
	struct aead_tfm *tfm;
	struct sock *sk = sock->sk;
	struct alg_sock *ask = FUNC0(sk);

	FUNC2(sk);
	if (ask->refcnt)
		goto unlock_child;

	psk = ask->parent;
	pask = FUNC0(ask->parent);
	tfm = pask->private;

	err = -ENOKEY;
	FUNC3(psk, SINGLE_DEPTH_NESTING);
	if (FUNC1(tfm->aead) & CRYPTO_TFM_NEED_KEY)
		goto unlock;

	if (!pask->refcnt++)
		FUNC5(psk);

	ask->refcnt = 1;
	FUNC6(psk);

	err = 0;

unlock:
	FUNC4(psk);
unlock_child:
	FUNC4(sk);

	return err;
}