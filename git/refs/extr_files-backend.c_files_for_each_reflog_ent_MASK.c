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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct ref_store {int dummy; } ;
struct files_ref_store {int dummy; } ;
typedef  int /*<<< orphan*/  each_reflog_ent_fn ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  REF_STORE_READ ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct files_ref_store* FUNC1 (struct ref_store*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct files_ref_store*,struct strbuf*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct strbuf*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

__attribute__((used)) static int FUNC7(struct ref_store *ref_store,
				     const char *refname,
				     each_reflog_ent_fn fn, void *cb_data)
{
	struct files_ref_store *refs =
		FUNC1(ref_store, REF_STORE_READ,
			       "for_each_reflog_ent");
	FILE *logfp;
	struct strbuf sb = STRBUF_INIT;
	int ret = 0;

	FUNC2(refs, &sb, refname);
	logfp = FUNC3(sb.buf, "r");
	FUNC6(&sb);
	if (!logfp)
		return -1;

	while (!ret && !FUNC5(&sb, logfp, '\n'))
		ret = FUNC4(&sb, fn, cb_data);
	FUNC0(logfp);
	FUNC6(&sb);
	return ret;
}