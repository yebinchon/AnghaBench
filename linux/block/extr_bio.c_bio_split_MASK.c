#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bio_set {int dummy; } ;
struct TYPE_2__ {int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_TRACE_COMPLETION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int) ; 
 struct bio* FUNC2 (struct bio*,int /*<<< orphan*/ ,struct bio_set*) ; 
 scalar_t__ FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*,int /*<<< orphan*/ ) ; 

struct bio *FUNC8(struct bio *bio, int sectors,
		      gfp_t gfp, struct bio_set *bs)
{
	struct bio *split;

	FUNC0(sectors <= 0);
	FUNC0(sectors >= FUNC6(bio));

	split = FUNC2(bio, gfp, bs);
	if (!split)
		return NULL;

	split->bi_iter.bi_size = sectors << 9;

	if (FUNC4(split))
		FUNC5(split);

	FUNC1(bio, split->bi_iter.bi_size);

	if (FUNC3(bio, BIO_TRACE_COMPLETION))
		FUNC7(split, BIO_TRACE_COMPLETION);

	return split;
}