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
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct bio* FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drbd_md_io_bio_set ; 

struct bio *FUNC3(gfp_t gfp_mask)
{
	struct bio *bio;

	if (!FUNC2(&drbd_md_io_bio_set))
		return FUNC0(gfp_mask, 1);

	bio = FUNC1(gfp_mask, 1, &drbd_md_io_bio_set);
	if (!bio)
		return NULL;
	return bio;
}