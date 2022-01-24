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
struct grab_nth_branch_switch_cbdata {long remaining; struct strbuf* sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct repository*) ; 
 int /*<<< orphan*/  grab_nth_branch_switch ; 
 char* FUNC1 (char const*,char,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct grab_nth_branch_switch_cbdata*) ; 
 long FUNC3 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC4(struct repository *r,
					const char *name, int namelen,
					struct strbuf *buf)
{
	long nth;
	int retval;
	struct grab_nth_branch_switch_cbdata cb;
	const char *brace;
	char *num_end;

	if (namelen < 4)
		return -1;
	if (name[0] != '@' || name[1] != '{' || name[2] != '-')
		return -1;
	brace = FUNC1(name, '}', namelen);
	if (!brace)
		return -1;
	nth = FUNC3(name + 3, &num_end, 10);
	if (num_end != brace)
		return -1;
	if (nth <= 0)
		return -1;
	cb.remaining = nth;
	cb.sb = buf;

	retval = FUNC2(FUNC0(r),
			"HEAD", grab_nth_branch_switch, &cb);
	if (0 < retval) {
		retval = brace - name + 1;
	} else
		retval = 0;

	return retval;
}