#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int dataMask; scalar_t__ dataBase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,size_t) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 TYPE_1__* currentVM ; 

void FUNC2(unsigned int dest, unsigned int src, size_t n)
{
	unsigned int dataMask = currentVM->dataMask;

	if ((dest & dataMask) != dest
	|| (src & dataMask) != src
	|| ((dest + n) & dataMask) != dest + n
	|| ((src + n) & dataMask) != src + n)
	{
		FUNC0(ERR_DROP, "OP_BLOCK_COPY out of range!");
	}

	FUNC1(currentVM->dataBase + dest, currentVM->dataBase + src, n);
}