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
struct string_list {int dummy; } ;
struct ref_store {int dummy; } ;

/* Variables and functions */
 struct string_list STRING_LIST_INIT_NODUP ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ref_store*,char const*,struct string_list*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct string_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ref_store *refs, const char **argv)
{
	unsigned int flags = FUNC0(*argv++, "flags");
	const char *msg = *argv++;
	struct string_list refnames = STRING_LIST_INIT_NODUP;

	while (*argv)
		FUNC2(&refnames, *argv++);

	return FUNC1(refs, msg, &refnames, flags);
}