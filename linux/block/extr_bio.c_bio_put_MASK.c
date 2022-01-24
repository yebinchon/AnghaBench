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
struct bio {int /*<<< orphan*/  __bi_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BIO_REFFED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 

void FUNC5(struct bio *bio)
{
	if (!FUNC3(bio, BIO_REFFED))
		FUNC4(bio);
	else {
		FUNC0(!FUNC2(&bio->__bi_cnt));

		/*
		 * last put frees it
		 */
		if (FUNC1(&bio->__bi_cnt))
			FUNC4(bio);
	}
}