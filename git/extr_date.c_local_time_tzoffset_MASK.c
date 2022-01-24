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
typedef  int time_t ;
struct tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,struct tm*) ; 
 int FUNC1 (struct tm*) ; 

__attribute__((used)) static int FUNC2(time_t t, struct tm *tm)
{
	time_t t_local;
	int offset, eastwest;

	FUNC0(&t, tm);
	t_local = FUNC1(tm);
	if (t_local == -1)
		return 0; /* error; just use +0000 */
	if (t_local < t) {
		eastwest = -1;
		offset = t - t_local;
	} else {
		eastwest = 1;
		offset = t_local - t;
	}
	offset /= 60; /* in minutes */
	offset = (offset % 60) + ((offset / 60) * 100);
	return offset * eastwest;
}