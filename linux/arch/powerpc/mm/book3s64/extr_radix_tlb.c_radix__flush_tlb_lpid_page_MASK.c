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
 int /*<<< orphan*/  RIC_FLUSH_TLB ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long) ; 

void FUNC2(unsigned int lpid,
					unsigned long addr,
					unsigned long page_size)
{
	int psize = FUNC1(page_size);

	FUNC0(addr, lpid, psize, RIC_FLUSH_TLB);
}