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
typedef  int /*<<< orphan*/  PIA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(PIA *pi, int cont, int reg)
{
	unsigned int out;

	/* check for bad settings */
	if (reg<0 || reg>7 || cont<0 || cont>2)
	{
		return(-1);
	}
	out=FUNC1(FUNC0(pi),cont?reg|8:reg);
	return(out);
}