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
typedef  int u32 ;
struct test_mb_ahash_data {int dummy; } ;
typedef  scalar_t__ cycles_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct test_mb_ahash_data*,int,int*) ; 
 scalar_t__ FUNC1 () ; 
 int* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,int) ; 

__attribute__((used)) static int FUNC5(struct test_mb_ahash_data *data, int blen,
				u32 num_mb)
{
	unsigned long cycles = 0;
	int ret = 0;
	int i;
	int *rc;

	rc = FUNC2(num_mb, sizeof(*rc), GFP_KERNEL);
	if (!rc)
		return -ENOMEM;

	/* Warm-up run. */
	for (i = 0; i < 4; i++) {
		ret = FUNC0(data, num_mb, rc);
		if (ret)
			goto out;
	}

	/* The real thing. */
	for (i = 0; i < 8; i++) {
		cycles_t start, end;

		start = FUNC1();
		ret = FUNC0(data, num_mb, rc);
		end = FUNC1();

		if (ret)
			goto out;

		cycles += end - start;
	}

	FUNC4("1 operation in %lu cycles (%d bytes)\n",
		(cycles + 4) / (8 * num_mb), blen);

out:
	FUNC3(rc);
	return ret;
}