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
struct test_mb_ahash_data {int /*<<< orphan*/  wait; int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static inline int FUNC3(struct test_mb_ahash_data *data, u32 num_mb,
				   int *rc)
{
	int i, err = 0;

	/* Fire up a bunch of concurrent requests */
	for (i = 0; i < num_mb; i++)
		rc[i] = FUNC0(data[i].req);

	/* Wait for all requests to finish */
	for (i = 0; i < num_mb; i++) {
		rc[i] = FUNC1(rc[i], &data[i].wait);

		if (rc[i]) {
			FUNC2("concurrent request %d error %d\n", i, rc[i]);
			err = rc[i];
		}
	}

	return err;
}