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
struct test_mb_skcipher_data {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int FUNC0 (struct test_mb_skcipher_data*,int,int,int*) ; 
 unsigned long jiffies ; 
 int* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,long) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct test_mb_skcipher_data *data, int enc,
				int blen, int secs, u32 num_mb)
{
	unsigned long start, end;
	int bcount;
	int ret = 0;
	int *rc;

	rc = FUNC1(num_mb, sizeof(*rc), GFP_KERNEL);
	if (!rc)
		return -ENOMEM;

	for (start = jiffies, end = start + secs * HZ, bcount = 0;
	     FUNC4(jiffies, end); bcount++) {
		ret = FUNC0(data, enc, num_mb, rc);
		if (ret)
			goto out;
	}

	FUNC3("%d operations in %d seconds (%ld bytes)\n",
		bcount * num_mb, secs, (long)bcount * blen * num_mb);

out:
	FUNC2(rc);
	return ret;
}