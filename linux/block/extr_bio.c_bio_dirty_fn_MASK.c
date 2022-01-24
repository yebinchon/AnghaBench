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
struct work_struct {int dummy; } ;
struct bio {struct bio* bi_private; } ;

/* Variables and functions */
 struct bio* bio_dirty_list ; 
 int /*<<< orphan*/  bio_dirty_lock ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct work_struct *work)
{
	struct bio *bio, *next;

	FUNC2(&bio_dirty_lock);
	next = bio_dirty_list;
	bio_dirty_list = NULL;
	FUNC3(&bio_dirty_lock);

	while ((bio = next) != NULL) {
		next = bio->bi_private;

		FUNC1(bio, true);
		FUNC0(bio);
	}
}