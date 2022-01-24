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
struct cipher_test_sglists {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cipher_test_sglists*) ; 
 struct cipher_test_sglists* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cipher_test_sglists *FUNC4(void)
{
	struct cipher_test_sglists *tsgls;

	tsgls = FUNC3(sizeof(*tsgls), GFP_KERNEL);
	if (!tsgls)
		return NULL;

	if (FUNC1(&tsgls->src) != 0)
		goto fail_kfree;
	if (FUNC1(&tsgls->dst) != 0)
		goto fail_destroy_src;

	return tsgls;

fail_destroy_src:
	FUNC0(&tsgls->src);
fail_kfree:
	FUNC2(tsgls);
	return NULL;
}