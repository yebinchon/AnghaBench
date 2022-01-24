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
#define  box 133 
#define  form 132 
#define  grid 131 
#define  group 130 
 size_t len ; 
#define  tab 129 
 TYPE_1__* things ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
#define  window 128 

void FUNC13(int spaced)
{
	size_t i;
	void *p;
	size_t j, n;

	for (i = 0; i < len; i++) {
		p = things[i].ptr;
		switch (things[i].type) {
		case window:
			FUNC12(FUNC11(p), spaced);
			break;
		case box:
			FUNC1(FUNC0(p), spaced);
			break;
		case tab:
			n = FUNC9(FUNC8(p));
			for (j = 0; j < n; j++)
				FUNC10(FUNC8(p), j, spaced);
			break;
		case group:
			FUNC7(FUNC6(p), spaced);
			break;
		case form:
			FUNC3(FUNC2(p), spaced);
			break;
		case grid:
			FUNC5(FUNC4(p), spaced);
			break;
		}
	}
}