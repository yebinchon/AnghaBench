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
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ifccr ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcicr ; 

__attribute__((used)) static int FUNC2(struct clk *clk)
{
	FUNC1(FUNC0(ifccr) & ~(1 << 16), ifccr);
	FUNC1((1 << 30), pcicr);
	return 0;
}