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
struct bio {struct bio* bi_next; struct bio* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_BOUNCED ; 
 int FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct bio *bio)
{
	struct bio *mapped_bio;
	int ret = 0, ret2;

	while (bio) {
		mapped_bio = bio;
		if (FUNC3(FUNC1(bio, BIO_BOUNCED)))
			mapped_bio = bio->bi_private;

		ret2 = FUNC0(mapped_bio);
		if (ret2 && !ret)
			ret = ret2;

		mapped_bio = bio;
		bio = bio->bi_next;
		FUNC2(mapped_bio);
	}

	return ret;
}