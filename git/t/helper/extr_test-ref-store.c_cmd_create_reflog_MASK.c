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
struct strbuf {int /*<<< orphan*/  buf; scalar_t__ len; } ;
struct ref_store {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ref_store*,char const*,int,struct strbuf*) ; 

__attribute__((used)) static int FUNC4(struct ref_store *refs, const char **argv)
{
	const char *refname = FUNC1(*argv++, "refname");
	int force_create = FUNC0(*argv++, "force-create");
	struct strbuf err = STRBUF_INIT;
	int ret;

	ret = FUNC3(refs, refname, force_create, &err);
	if (err.len)
		FUNC2(err.buf);
	return ret;
}