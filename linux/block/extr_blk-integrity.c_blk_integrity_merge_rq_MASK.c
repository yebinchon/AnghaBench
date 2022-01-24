#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ max_integrity_segments; } ;
struct request_queue {TYPE_1__ limits; } ;
struct request {scalar_t__ nr_integrity_segments; int /*<<< orphan*/  bio; } ;
struct TYPE_4__ {scalar_t__ bip_flags; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*,int /*<<< orphan*/ ) ; 

bool FUNC3(struct request_queue *q, struct request *req,
			    struct request *next)
{
	if (FUNC1(req) == 0 && FUNC1(next) == 0)
		return true;

	if (FUNC1(req) == 0 || FUNC1(next) == 0)
		return false;

	if (FUNC0(req->bio)->bip_flags !=
	    FUNC0(next->bio)->bip_flags)
		return false;

	if (req->nr_integrity_segments + next->nr_integrity_segments >
	    q->limits.max_integrity_segments)
		return false;

	if (FUNC2(req, next->bio))
		return false;

	return true;
}