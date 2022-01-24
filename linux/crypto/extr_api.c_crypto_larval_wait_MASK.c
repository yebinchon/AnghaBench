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
struct crypto_larval {int /*<<< orphan*/  alg; struct crypto_alg* adult; int /*<<< orphan*/  completion; } ;
struct crypto_alg {int cra_flags; } ;

/* Variables and functions */
 int CRYPTO_ALG_TESTED ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  ENOENT ; 
 struct crypto_alg* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int HZ ; 
 scalar_t__ FUNC1 (struct crypto_larval*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_alg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct crypto_alg *FUNC5(struct crypto_alg *alg)
{
	struct crypto_larval *larval = (void *)alg;
	long timeout;

	timeout = FUNC4(
		&larval->completion, 60 * HZ);

	alg = larval->adult;
	if (timeout < 0)
		alg = FUNC0(-EINTR);
	else if (!timeout)
		alg = FUNC0(-ETIMEDOUT);
	else if (!alg)
		alg = FUNC0(-ENOENT);
	else if (FUNC1(larval) &&
		 !(alg->cra_flags & CRYPTO_ALG_TESTED))
		alg = FUNC0(-EAGAIN);
	else if (!FUNC2(alg))
		alg = FUNC0(-EAGAIN);
	FUNC3(&larval->alg);

	return alg;
}