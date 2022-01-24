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
struct sock {int dummy; } ;
struct alg_sock {unsigned int nokey_refcnt; int /*<<< orphan*/  refcnt; struct sock* parent; } ;

/* Variables and functions */
 struct alg_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

void FUNC4(struct sock *sk)
{
	struct alg_sock *ask = FUNC0(sk);
	unsigned int nokey = ask->nokey_refcnt;
	bool last = nokey && !ask->refcnt;

	sk = ask->parent;
	ask = FUNC0(sk);

	FUNC1(sk);
	ask->nokey_refcnt -= nokey;
	if (!last)
		last = !--ask->refcnt;
	FUNC2(sk);

	if (last)
		FUNC3(sk);
}