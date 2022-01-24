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
 int WM_CASEFOLD ; 
 int WM_PATHNAME ; 
 int /*<<< orphan*/  FUNC0 (char const*,size_t,char*,char const*,int) ; 
 char FUNC1 (char const*,char const*,int) ; 

__attribute__((used)) static void FUNC2(const char *string, const char *pattern,
		char expected_wildmatch, char expected_iwildmatch,
		char expected_pathmatch, char expected_ipathmatch,
		const char *file, size_t line)
{
	if (FUNC1(pattern, string, WM_PATHNAME) == expected_wildmatch)
		FUNC0(file, line, "Test failed (wildmatch).", string, 1);
	if (FUNC1(pattern, string, WM_PATHNAME|WM_CASEFOLD) == expected_iwildmatch)
		FUNC0(file, line, "Test failed (iwildmatch).", string, 1);
	if (FUNC1(pattern, string, 0) == expected_pathmatch)
		FUNC0(file, line, "Test failed (pathmatch).", string, 1);
	if (FUNC1(pattern, string, WM_CASEFOLD) == expected_ipathmatch)
		FUNC0(file, line, "Test failed (ipathmatch).", string, 1);
}