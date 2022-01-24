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
struct msghdr {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct alg_sock {struct aead_tfm* private; struct sock* parent; } ;
struct aead_tfm {struct crypto_aead* aead; } ;

/* Variables and functions */
 int FUNC0 (struct socket*,struct msghdr*,size_t,unsigned int) ; 
 struct alg_sock* FUNC1 (struct sock*) ; 
 unsigned int FUNC2 (struct crypto_aead*) ; 

__attribute__((used)) static int FUNC3(struct socket *sock, struct msghdr *msg, size_t size)
{
	struct sock *sk = sock->sk;
	struct alg_sock *ask = FUNC1(sk);
	struct sock *psk = ask->parent;
	struct alg_sock *pask = FUNC1(psk);
	struct aead_tfm *aeadc = pask->private;
	struct crypto_aead *tfm = aeadc->aead;
	unsigned int ivsize = FUNC2(tfm);

	return FUNC0(sock, msg, size, ivsize);
}