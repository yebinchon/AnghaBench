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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,int) ; 
 int rc ; 

__attribute__((used)) static void FUNC1(const char *class, int ch)
{
	FUNC0("%s classifies char %d (0x%02x) wrongly\n", class, ch, ch);
	rc = 1;
}