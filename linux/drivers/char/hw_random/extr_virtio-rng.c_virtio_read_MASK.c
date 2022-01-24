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
struct virtrng_info {int busy; int data_avail; int /*<<< orphan*/  have_data; scalar_t__ hwrng_removed; } ;
struct hwrng {scalar_t__ priv; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct virtrng_info*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct hwrng *rng, void *buf, size_t size, bool wait)
{
	int ret;
	struct virtrng_info *vi = (struct virtrng_info *)rng->priv;

	if (vi->hwrng_removed)
		return -ENODEV;

	if (!vi->busy) {
		vi->busy = true;
		FUNC1(&vi->have_data);
		FUNC0(vi, buf, size);
	}

	if (!wait)
		return 0;

	ret = FUNC2(&vi->have_data);
	if (ret < 0)
		return ret;

	vi->busy = false;

	return vi->data_avail;
}