#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ ns; } ;
typedef  TYPE_1__ nstime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__ const*) ; 

void
FUNC2(nstime_t *time, const nstime_t *subtrahend) {
	FUNC0(FUNC1(time, subtrahend) >= 0);

	time->ns -= subtrahend->ns;
}