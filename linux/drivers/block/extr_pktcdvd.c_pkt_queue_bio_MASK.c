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
struct TYPE_2__ {int /*<<< orphan*/  attention; int /*<<< orphan*/  lock; int /*<<< orphan*/  write_queue; int /*<<< orphan*/  read_queue; } ;
struct pktcdvd_device {int /*<<< orphan*/  wqueue; TYPE_1__ iosched; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 scalar_t__ READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct pktcdvd_device *pd, struct bio *bio)
{
	FUNC3(&pd->iosched.lock);
	if (FUNC1(bio) == READ)
		FUNC2(&pd->iosched.read_queue, bio);
	else
		FUNC2(&pd->iosched.write_queue, bio);
	FUNC4(&pd->iosched.lock);

	FUNC0(&pd->iosched.attention, 1);
	FUNC5(&pd->wqueue);
}