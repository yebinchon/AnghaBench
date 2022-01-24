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
typedef  int /*<<< orphan*/  u8 ;
struct jitterentropy {int /*<<< orphan*/  jent_lock; int /*<<< orphan*/  entropy_collector; } ;
struct crypto_rng {int dummy; } ;

/* Variables and functions */
 struct jitterentropy* FUNC0 (struct crypto_rng*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct crypto_rng *tfm,
			     const u8 *src, unsigned int slen,
			     u8 *rdata, unsigned int dlen)
{
	struct jitterentropy *rng = FUNC0(tfm);
	int ret = 0;

	FUNC2(&rng->jent_lock);
	ret = FUNC1(rng->entropy_collector, rdata, dlen);
	FUNC3(&rng->jent_lock);

	return ret;
}