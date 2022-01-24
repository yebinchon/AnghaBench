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
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 char* FUNC2 (char const*,char const*) ; 

const char *FUNC3(const char *json, const char *jsonEnd)
{
	if (!json || json >= jsonEnd || !FUNC1(*json))
		return NULL;

	json = FUNC2(json + 1, jsonEnd);

	return (json >= jsonEnd || FUNC0(*json)) ? NULL : json;
}