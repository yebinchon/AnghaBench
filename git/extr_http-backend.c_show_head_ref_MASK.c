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
struct object_id {int dummy; } ;

/* Variables and functions */
 int REF_ISSYMREF ; 
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 int /*<<< orphan*/  FUNC0 (struct object_id const*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(const char *refname, const struct object_id *oid,
			 int flag, void *cb_data)
{
	struct strbuf *buf = cb_data;

	if (flag & REF_ISSYMREF) {
		const char *target = FUNC1(refname,
							RESOLVE_REF_READING,
							NULL, NULL);

		if (target)
			FUNC2(buf, "ref: %s\n", FUNC3(target));
	} else {
		FUNC2(buf, "%s\n", FUNC0(oid));
	}

	return 0;
}