#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__* Symbol ;
typedef  int /*<<< orphan*/ * Node ;

/* Variables and functions */
 scalar_t__ ADDRG ; 
 scalar_t__ JUMP ; 
 scalar_t__ V ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  voidptype ; 

Node FUNC3(int lab) {
	Symbol p = FUNC0(lab);

	p->ref++;
	return FUNC1(JUMP+V, FUNC1(ADDRG+FUNC2(voidptype), NULL, NULL, p),
		NULL, NULL);
}