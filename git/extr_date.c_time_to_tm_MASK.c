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
typedef  int /*<<< orphan*/  timestamp_t ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct tm* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct tm *FUNC2(timestamp_t time, int tz)
{
	time_t t = FUNC0(time, tz);
	return FUNC1(&t);
}