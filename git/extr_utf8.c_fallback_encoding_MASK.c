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
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static const char *FUNC2(const char *name)
{
	/*
	 * Some platforms do not have the variously spelled variants of
	 * UTF-8, so let's fall back to trying the most official
	 * spelling. We do so only as a fallback in case the platform
	 * does understand the user's spelling, but not our official
	 * one.
	 */
	if (FUNC0(name))
		return "UTF-8";

	/*
	 * Even though latin-1 is still seen in e-mail
	 * headers, some platforms only install ISO-8859-1.
	 */
	if (!FUNC1(name, "latin-1"))
		return "ISO-8859-1";

	return name;
}