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
struct object_id {int dummy; } ;
struct all_refs_cb {int /*<<< orphan*/  name_for_errormsg; int /*<<< orphan*/  wt; scalar_t__ warned_bad_reflog; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_one_reflog_ent ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct strbuf*,char const*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC4(const char *refname_in_wt,
			     const struct object_id *oid,
			     int flag, void *cb_data)
{
	struct all_refs_cb *cb = cb_data;
	struct strbuf refname = STRBUF_INIT;

	cb->warned_bad_reflog = 0;
	FUNC3(cb->wt, &refname, refname_in_wt);
	cb->name_for_errormsg = refname.buf;
	FUNC1(FUNC0(the_repository),
				 refname.buf,
				 handle_one_reflog_ent, cb_data);
	FUNC2(&refname);
	return 0;
}