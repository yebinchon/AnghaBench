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
struct iov_iter {int dummy; } ;
struct bio {scalar_t__ bi_vcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NO_PAGE_REF ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (struct bio*,struct iov_iter*) ; 
 int FUNC2 (struct bio*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct iov_iter*) ; 
 int FUNC6 (struct iov_iter*) ; 

int FUNC7(struct bio *bio, struct iov_iter *iter)
{
	const bool is_bvec = FUNC6(iter);
	int ret;

	if (FUNC0(bio->bi_vcnt))
		return -EINVAL;

	do {
		if (is_bvec)
			ret = FUNC1(bio, iter);
		else
			ret = FUNC2(bio, iter);
	} while (!ret && FUNC5(iter) && !FUNC3(bio, 0));

	if (is_bvec)
		FUNC4(bio, BIO_NO_PAGE_REF);
	return bio->bi_vcnt ? 0 : ret;
}