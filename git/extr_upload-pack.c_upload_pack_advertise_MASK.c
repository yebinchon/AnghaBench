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
struct strbuf {int dummy; } ;
struct repository {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC3(struct repository *r,
			  struct strbuf *value)
{
	if (value) {
		int allow_filter_value;
		int allow_ref_in_want;
		int allow_sideband_all_value;

		FUNC2(value, "shallow");

		if (!FUNC1(the_repository,
					 "uploadpack.allowfilter",
					 &allow_filter_value) &&
		    allow_filter_value)
			FUNC2(value, " filter");

		if (!FUNC1(the_repository,
					 "uploadpack.allowrefinwant",
					 &allow_ref_in_want) &&
		    allow_ref_in_want)
			FUNC2(value, " ref-in-want");

		if (FUNC0("GIT_TEST_SIDEBAND_ALL", 0) ||
		    (!FUNC1(the_repository,
					   "uploadpack.allowsidebandall",
					   &allow_sideband_all_value) &&
		     allow_sideband_all_value))
			FUNC2(value, " sideband-all");
	}

	return 1;
}