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
typedef  unsigned long u32 ;
typedef  int /*<<< orphan*/  loader_block ;
typedef  int /*<<< orphan*/  amb_dev ;

/* Variables and functions */
 int /*<<< orphan*/  amb_mem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long onegigmask ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stuff ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC4 (amb_dev *dev, loader_block *lb)
{
	// fix up the PLX-mapped window base address to match the block
	unsigned long blb;
	u32 mapreg;
	blb = FUNC2(lb);
	// the kernel stack had better not ever cross a 1Gb boundary!
	mapreg = FUNC1 (dev, FUNC0(amb_mem, stuff[10]));
	mapreg &= ~onegigmask;
	mapreg |= blb & onegigmask;
	FUNC3 (dev, FUNC0(amb_mem, stuff[10]), mapreg);
	return;
}