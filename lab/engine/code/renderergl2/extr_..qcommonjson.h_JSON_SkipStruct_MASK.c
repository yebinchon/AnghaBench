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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 char* FUNC1 (char const*,char const*) ; 
 char* FUNC2 (char const*,char const*) ; 

__attribute__((used)) static const char *FUNC3(const char *json, const char *jsonEnd)
{
	json = FUNC1(json + 1, jsonEnd);
	while (json < jsonEnd && !FUNC0(*json))
		json = FUNC2(json, jsonEnd);

	return (json + 1 > jsonEnd) ? jsonEnd : json + 1;
}