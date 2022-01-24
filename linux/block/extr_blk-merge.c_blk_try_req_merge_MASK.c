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
struct request {int dummy; } ;
typedef  enum elv_merge { ____Placeholder_elv_merge } elv_merge ;

/* Variables and functions */
 int ELEVATOR_BACK_MERGE ; 
 int ELEVATOR_DISCARD_MERGE ; 
 int ELEVATOR_NO_MERGE ; 
 scalar_t__ FUNC0 (struct request*) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 

__attribute__((used)) static enum elv_merge FUNC3(struct request *req,
					struct request *next)
{
	if (FUNC0(req))
		return ELEVATOR_DISCARD_MERGE;
	else if (FUNC1(req) + FUNC2(req) == FUNC1(next))
		return ELEVATOR_BACK_MERGE;

	return ELEVATOR_NO_MERGE;
}