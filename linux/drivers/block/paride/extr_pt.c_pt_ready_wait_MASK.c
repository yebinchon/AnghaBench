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
struct pt_unit {int last_sense; } ;

/* Variables and functions */
 char ATAPI_TEST_READY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC1 (struct pt_unit*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pt_unit *tape, int tmo)
{
	char tr_cmd[12] = { ATAPI_TEST_READY, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
	int k, p;

	k = 0;
	while (k < tmo) {
		tape->last_sense = 0;
		FUNC1(tape, tr_cmd, 0, NULL, FUNC0("test unit ready"));
		p = tape->last_sense;
		if (!p)
			return 0;
		if (!(((p & 0xffff) == 0x0402) || ((p & 0xff) == 6)))
			return p;
		k++;
		FUNC2(HZ);
	}
	return 0x000020;	/* timeout */
}