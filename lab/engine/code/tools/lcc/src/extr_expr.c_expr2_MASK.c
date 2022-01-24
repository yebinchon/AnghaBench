#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* Tree ;
struct TYPE_15__ {scalar_t__ points; } ;
struct TYPE_14__ {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  Coordinate ;

/* Variables and functions */
 int Aflag ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,TYPE_1__**) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 TYPE_8__ events ; 
 TYPE_1__* FUNC2 (char) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 char FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  src ; 
 char t ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Tree FUNC9(void) {
	Tree p = FUNC3(4);

	if (t == '?') {
		Tree l, r;
		Coordinate pts[2];
		if (Aflag > 1 && FUNC6(p->type))
			FUNC8("%s used in a conditional expression\n",
				FUNC4(p));
		p = FUNC7(p);
		t = FUNC5();
		pts[0] = src;
		l = FUNC7(FUNC2(':'));
		pts[1] = src;
		r = FUNC7(FUNC9());
		if (events.points)
			{
				FUNC0(events.points, &pts[0], &l);
				FUNC0(events.points, &pts[1], &r);
			}
		p = FUNC1(p, l, r);
	}
	return p;
}