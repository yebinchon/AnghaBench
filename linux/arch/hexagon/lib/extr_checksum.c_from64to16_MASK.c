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

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 

__attribute__((used)) static inline unsigned short FUNC4(u64 x)
{
	u64 sum;

	sum = FUNC0(x^FUNC2(1, 1, 1, 1),
			     FUNC3(1, 1, 1, 1));
	sum += FUNC1(0, 0, 1, 0);
	sum = FUNC0(sum, FUNC3(0, 0, 1, 1));

	return 0xFFFF & sum;
}