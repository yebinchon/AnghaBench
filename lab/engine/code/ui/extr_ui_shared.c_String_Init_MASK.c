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
struct TYPE_2__ {scalar_t__ getBindingBuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* DC ; 
 int HASH_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ menuCount ; 
 scalar_t__ openMenuCount ; 
 int /*<<< orphan*/ ** strHandle ; 
 scalar_t__ strHandleCount ; 
 scalar_t__ strPoolIndex ; 

void FUNC4(void) {
	int i;
	for (i = 0; i < HASH_TABLE_SIZE; i++) {
		strHandle[i] = NULL;
	}
	strHandleCount = 0;
	strPoolIndex = 0;
	menuCount = 0;
	openMenuCount = 0;
	FUNC3();
	FUNC1();
	FUNC2();
	if (DC && DC->getBindingBuf) {
		FUNC0();
	}
}