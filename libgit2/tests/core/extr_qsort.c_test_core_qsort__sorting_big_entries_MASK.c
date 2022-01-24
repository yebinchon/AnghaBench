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
struct big_entries {struct big_entries** c; } ;
typedef  int /*<<< orphan*/  a ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct big_entries*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cmp_big ; 
 int /*<<< orphan*/  FUNC2 (struct big_entries**,char,int) ; 
 int /*<<< orphan*/  FUNC3 (struct big_entries**,char*) ; 

void FUNC4(void)
{
	struct big_entries a[5];

	FUNC2(&a, 0, sizeof(a));

	FUNC2(a[0].c, 'w', sizeof(a[0].c) - 1);
	FUNC2(a[1].c, 'c', sizeof(a[1].c) - 1);
	FUNC2(a[2].c, 'w', sizeof(a[2].c) - 1);
	FUNC2(a[3].c, 'h', sizeof(a[3].c) - 1);
	FUNC2(a[4].c, 'a', sizeof(a[4].c) - 1);

	FUNC0(a, cmp_big);

	FUNC1(FUNC3(a[0].c, "a"), sizeof(a[0].c) - 1);
	FUNC1(FUNC3(a[1].c, "c"), sizeof(a[1].c) - 1);
	FUNC1(FUNC3(a[2].c, "h"), sizeof(a[2].c) - 1);
	FUNC1(FUNC3(a[3].c, "w"), sizeof(a[3].c) - 1);
	FUNC1(FUNC3(a[4].c, "w"), sizeof(a[4].c) - 1);
}