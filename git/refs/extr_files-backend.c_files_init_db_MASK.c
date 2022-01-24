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

/* Variables and functions */
 int /*<<< orphan*/  REF_STORE_WRITE ; 
 struct strbuf STRBUF_INIT ; 
 struct files_ref_store* FUNC0 (struct ref_store*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct files_ref_store*,struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

__attribute__((used)) static int FUNC5(struct ref_store *ref_store, struct strbuf *err)
{
	struct files_ref_store *refs =
		FUNC0(ref_store, REF_STORE_WRITE, "init_db");
	struct strbuf sb = STRBUF_INIT;

	/*
	 * Create .git/refs/{heads,tags}
	 */
	FUNC1(refs, &sb, "refs/heads");
	FUNC2(sb.buf, 1);

	FUNC4(&sb);
	FUNC1(refs, &sb, "refs/tags");
	FUNC2(sb.buf, 1);

	FUNC3(&sb);
	return 0;
}