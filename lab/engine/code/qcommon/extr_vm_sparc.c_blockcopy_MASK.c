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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* currentVM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int dest, unsigned int src, unsigned int count)
{
	unsigned int dataMask = currentVM->dataMask;

	if ((dest & dataMask) != dest ||
	    (src & dataMask) != src ||
	    ((dest+count) & dataMask) != dest + count ||
	    ((src+count) & dataMask) != src + count) {
		FUNC0("OP_BLOCK_COPY out of range!");
	}

	FUNC1(currentVM->dataBase+dest, currentVM->dataBase+src, count);
}