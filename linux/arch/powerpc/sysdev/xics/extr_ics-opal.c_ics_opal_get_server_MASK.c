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
struct ics {int dummy; } ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ OPAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC3(struct ics *ics, unsigned long vec)
{
	int64_t rc;
	__be16 server;
	int8_t priority;

	/* Check if HAL knows about this interrupt */
	rc = FUNC2(vec, &server, &priority);
	if (rc != OPAL_SUCCESS)
		return -1;
	return FUNC1(FUNC0(server));
}