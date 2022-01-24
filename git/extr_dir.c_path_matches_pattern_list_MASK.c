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
struct pattern_list {int dummy; } ;
struct path_pattern {int flags; } ;
struct index_state {int dummy; } ;
typedef  enum pattern_match_result { ____Placeholder_pattern_match_result } pattern_match_result ;

/* Variables and functions */
 int MATCHED ; 
 int NOT_MATCHED ; 
 int PATTERN_FLAG_NEGATIVE ; 
 int UNDECIDED ; 
 struct path_pattern* FUNC0 (char const*,int,char const*,int*,struct pattern_list*,struct index_state*) ; 

enum pattern_match_result FUNC1(
				const char *pathname, int pathlen,
				const char *basename, int *dtype,
				struct pattern_list *pl,
				struct index_state *istate)
{
	struct path_pattern *pattern;
	pattern = FUNC0(pathname, pathlen, basename,
						  dtype, pl, istate);
	if (pattern) {
		if (pattern->flags & PATTERN_FLAG_NEGATIVE)
			return NOT_MATCHED;
		else
			return MATCHED;
	}

	return UNDECIDED;
}