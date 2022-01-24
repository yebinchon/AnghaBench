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
 scalar_t__ FUNC0 (char const*,char const*) ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,size_t) ; 

__attribute__((used)) static bool FUNC3(
	const char *old_ref, const char *new_ref, const char *this_ref)
{
	if (old_ref == NULL || FUNC0(old_ref, this_ref)) {
		size_t reflen = FUNC1(this_ref);
		size_t newlen = FUNC1(new_ref);
		size_t cmplen = reflen < newlen ? reflen : newlen;
		const char *lead = reflen < newlen ? new_ref : this_ref;

		if (!FUNC2(new_ref, this_ref, cmplen) && lead[cmplen] == '/') {
			return false;
		}
	}

	return true;
}