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
struct complete_reflogs {scalar_t__ nr; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,struct complete_reflogs*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  read_one_reflog ; 
 void* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct complete_reflogs* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 char* FUNC5 (char*,char const*) ; 

__attribute__((used)) static struct complete_reflogs *FUNC6(const char *ref)
{
	struct complete_reflogs *reflogs =
		FUNC3(1, sizeof(struct complete_reflogs));
	reflogs->ref = FUNC4(ref);
	FUNC0(ref, read_one_reflog, reflogs);
	if (reflogs->nr == 0) {
		const char *name;
		void *name_to_free;
		name = name_to_free = FUNC2(ref, RESOLVE_REF_READING,
						     NULL, NULL);
		if (name) {
			FUNC0(name, read_one_reflog, reflogs);
			FUNC1(name_to_free);
		}
	}
	if (reflogs->nr == 0) {
		char *refname = FUNC5("refs/%s", ref);
		FUNC0(refname, read_one_reflog, reflogs);
		if (reflogs->nr == 0) {
			FUNC1(refname);
			refname = FUNC5("refs/heads/%s", ref);
			FUNC0(refname, read_one_reflog, reflogs);
		}
		FUNC1(refname);
	}
	return reflogs;
}