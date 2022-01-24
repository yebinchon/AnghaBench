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
 int /*<<< orphan*/  LTQ_ASC_FSTAT ; 
 int /*<<< orphan*/  LTQ_ASC_TBUF ; 
 int TXMASK ; 
 int TXOFFSET ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ) ; 

void FUNC4(char c)
{
	unsigned long flags;

	FUNC1(flags);
	do { } while ((FUNC2(LTQ_ASC_FSTAT) & TXMASK) >> TXOFFSET);
	if (c == '\n')
		FUNC3('\r', LTQ_ASC_TBUF);
	FUNC3(c, LTQ_ASC_TBUF);
	FUNC0(flags);
}