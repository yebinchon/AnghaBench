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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct ref_store {int dummy; } ;
struct files_ref_store {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_STORE_READ ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct files_ref_store* FUNC1 (struct ref_store*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct files_ref_store*,struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

__attribute__((used)) static int FUNC5(struct ref_store *ref_store,
			       const char *refname)
{
	struct files_ref_store *refs =
		FUNC1(ref_store, REF_STORE_READ, "reflog_exists");
	struct strbuf sb = STRBUF_INIT;
	struct stat st;
	int ret;

	FUNC2(refs, &sb, refname);
	ret = !FUNC3(sb.buf, &st) && FUNC0(st.st_mode);
	FUNC4(&sb);
	return ret;
}