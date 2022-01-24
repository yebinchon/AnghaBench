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
struct TYPE_2__ {int type; void* ptr; } ;

/* Variables and functions */
#define  box 131 
#define  group 130 
 size_t len ; 
#define  tab 129 
 TYPE_1__* things ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
#define  window 128 

void FUNC9(char out[12])		// more than enough
{
	int m = 0;
	int p = 0;
	size_t i;
	void *pp;
	size_t j, n;

	for (i = 0; i < len; i++) {
		pp = things[i].ptr;
		switch (things[i].type) {
		case window:
			if (FUNC8(FUNC7(pp)))
				m++;
			break;
		case box:
			p = FUNC1(FUNC0(pp));
			break;
		case tab:
			n = FUNC6(FUNC4(pp));
			for (j = 0; j < n; j++)
				if (FUNC5(FUNC4(pp), j))
					m++;
			break;
		case group:
			if (FUNC3(FUNC2(pp)))
				m++;
			break;
		// TODO form
		// TODO grid
		}
	}

	out[0] = 'm';
	out[1] = ' ';
	out[2] = '0' + m;
	out[3] = ' ';
	out[4] = 'p';
	out[5] = ' ';
	out[6] = '0';
	if (p)
		out[6] = '1';
	out[7] = '\0';
}