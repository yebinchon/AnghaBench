#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__,TYPE_1__) ; 
 float FUNC2 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,int,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__,TYPE_1__,TYPE_1__) ; 

__attribute__((used)) static void FUNC8(int line, vec3_t start, vec3_t end, int color) {
	vec3_t points[4], dir, cross, up = {0, 0, 1};
	float dot;

	FUNC3(start, points[0]);
	FUNC3(start, points[1]);
	//points[1][2] -= 2;
	FUNC3(end, points[2]);
	//points[2][2] -= 2;
	FUNC3(end, points[3]);


	FUNC7(end, start, dir);
	FUNC5(dir);
	dot = FUNC2(dir, up);
	if (dot > 0.99 || dot < -0.99) FUNC6(cross, 1, 0, 0);
	else FUNC1(dir, up, cross);

	FUNC5(cross);

	FUNC4(points[0], 2, cross, points[0]);
	FUNC4(points[1], -2, cross, points[1]);
	FUNC4(points[2], -2, cross, points[2]);
	FUNC4(points[3], 2, cross, points[3]);

	FUNC0(line, color, 4, points);
}