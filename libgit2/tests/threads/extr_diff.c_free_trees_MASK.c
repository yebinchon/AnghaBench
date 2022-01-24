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

/* Variables and functions */
 int /*<<< orphan*/ * _a ; 
 int /*<<< orphan*/ * _b ; 
 scalar_t__ _check_counts ; 
 int /*<<< orphan*/ * _counts ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC2(_a); _a = NULL;
	FUNC2(_b); _b = NULL;

	if (_check_counts) {
		FUNC0(288, FUNC1(&_counts[0]));
		FUNC0(112, FUNC1(&_counts[1]));
		FUNC0( 80, FUNC1(&_counts[2]));
		FUNC0( 96, FUNC1(&_counts[3]));
	}
}