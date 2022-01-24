#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ dwAllocationGranularity; } ;
typedef  TYPE_1__ SYSTEM_INFO ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static DWORD FUNC1(void)
{
	static DWORD granularity;
	SYSTEM_INFO sys;

	if (!granularity) {
		FUNC0(&sys);
		granularity = sys.dwAllocationGranularity;
	}

	return granularity;
}