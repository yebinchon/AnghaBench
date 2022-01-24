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

/* Variables and functions */
 int /*<<< orphan*/  BIOSET_NEED_BVECS ; 
 int /*<<< orphan*/  BIO_POOL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bounce_bio_set ; 
 int /*<<< orphan*/  bounce_bio_split ; 

__attribute__((used)) static void FUNC3(void)
{
	static bool bounce_bs_setup;
	int ret;

	if (bounce_bs_setup)
		return;

	ret = FUNC1(&bounce_bio_set, BIO_POOL_SIZE, 0, BIOSET_NEED_BVECS);
	FUNC0(ret);
	if (FUNC2(&bounce_bio_set, BIO_POOL_SIZE))
		FUNC0(1);

	ret = FUNC1(&bounce_bio_split, BIO_POOL_SIZE, 0, 0);
	FUNC0(ret);
	bounce_bs_setup = true;
}