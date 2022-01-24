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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct zpci_fib {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZPCI_INSN_BUSY_DELAY ; 
 int FUNC0 (int /*<<< orphan*/ ,struct zpci_fib*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u8 FUNC3(u64 req, struct zpci_fib *fib, u8 *status)
{
	u8 cc;

	do {
		cc = FUNC0(req, fib, status);
		if (cc == 2)
			FUNC1(ZPCI_INSN_BUSY_DELAY);
	} while (cc == 2);

	if (cc)
		FUNC2(cc, *status, req, 0);

	return cc;
}