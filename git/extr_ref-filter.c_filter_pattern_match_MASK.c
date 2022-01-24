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
struct ref_filter {scalar_t__ match_as_path; int /*<<< orphan*/ * name_patterns; } ;

/* Variables and functions */
 int FUNC0 (struct ref_filter*,char const*) ; 
 int FUNC1 (struct ref_filter*,char const*) ; 

__attribute__((used)) static int FUNC2(struct ref_filter *filter, const char *refname)
{
	if (!*filter->name_patterns)
		return 1; /* No pattern always matches */
	if (filter->match_as_path)
		return FUNC0(filter, refname);
	return FUNC1(filter, refname);
}