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
struct bio {scalar_t__ bi_status; struct bio* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 

__attribute__((used)) static struct bio *FUNC1(struct bio *bio)
{
	struct bio *parent = bio->bi_private;

	if (!parent->bi_status)
		parent->bi_status = bio->bi_status;
	FUNC0(bio);
	return parent;
}