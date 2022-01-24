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
typedef  int /*<<< orphan*/  be128 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC4(be128 *r, const be128 *b)
{
	be128 p[8];
	int i;

	p[0] = *r;
	for (i = 0; i < 7; ++i)
		FUNC2(&p[i + 1], &p[i]);

	FUNC3(r, 0, sizeof(*r));
	for (i = 0;;) {
		u8 ch = ((u8 *)b)[15 - i];

		if (ch & 0x80)
			FUNC0(r, r, &p[0]);
		if (ch & 0x40)
			FUNC0(r, r, &p[1]);
		if (ch & 0x20)
			FUNC0(r, r, &p[2]);
		if (ch & 0x10)
			FUNC0(r, r, &p[3]);
		if (ch & 0x08)
			FUNC0(r, r, &p[4]);
		if (ch & 0x04)
			FUNC0(r, r, &p[5]);
		if (ch & 0x02)
			FUNC0(r, r, &p[6]);
		if (ch & 0x01)
			FUNC0(r, r, &p[7]);

		if (++i >= 16)
			break;

		FUNC1(r);
	}
}