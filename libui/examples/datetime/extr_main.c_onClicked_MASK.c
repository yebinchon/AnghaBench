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
typedef  int /*<<< orphan*/  uiButton ;
typedef  scalar_t__ time_t ;
struct tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dtboth ; 
 int /*<<< orphan*/  dtdate ; 
 int /*<<< orphan*/  dttime ; 
 struct tm* FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct tm*) ; 

void FUNC3(uiButton *b, void *data)
{
	intptr_t now;
	time_t t;
	struct tm tmbuf;

	now = (intptr_t) data;
	t = 0;
	if (now)
		t = FUNC1(NULL);
	tmbuf = *FUNC0(&t);

	if (now) {
		FUNC2(dtdate, &tmbuf);
		FUNC2(dttime, &tmbuf);
	} else
		FUNC2(dtboth, &tmbuf);
}