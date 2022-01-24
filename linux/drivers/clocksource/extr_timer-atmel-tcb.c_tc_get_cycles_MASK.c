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
typedef  int u64 ;
typedef  int u32 ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CV ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ tcaddr ; 

__attribute__((used)) static u64 FUNC4(struct clocksource *cs)
{
	unsigned long	flags;
	u32		lower, upper;

	FUNC2(flags);
	do {
		upper = FUNC3(tcaddr + FUNC0(1, CV));
		lower = FUNC3(tcaddr + FUNC0(0, CV));
	} while (upper != FUNC3(tcaddr + FUNC0(1, CV)));

	FUNC1(flags);
	return (upper << 16) | lower;
}