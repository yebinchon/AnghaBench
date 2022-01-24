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
struct bio_set {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*,struct bio*) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bio_set*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 int FUNC3 (struct bio*,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 

struct bio *FUNC5(struct bio *bio, gfp_t gfp_mask, struct bio_set *bs)
{
	struct bio *b;

	b = FUNC1(gfp_mask, 0, bs);
	if (!b)
		return NULL;

	FUNC0(b, bio);

	if (FUNC2(bio)) {
		int ret;

		ret = FUNC3(b, bio, gfp_mask);

		if (ret < 0) {
			FUNC4(b);
			return NULL;
		}
	}

	return b;
}