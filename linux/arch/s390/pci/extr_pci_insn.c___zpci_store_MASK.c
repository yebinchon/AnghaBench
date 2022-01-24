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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ZPCI_INSN_BUSY_DELAY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(u64 data, u64 req, u64 offset)
{
	u8 status;
	int cc;

	do {
		cc = FUNC0(data, req, offset, &status);
		if (cc == 2)
			FUNC1(ZPCI_INSN_BUSY_DELAY);
	} while (cc == 2);

	if (cc)
		FUNC2(cc, status, req, offset);

	return (cc > 0) ? -EIO : cc;
}