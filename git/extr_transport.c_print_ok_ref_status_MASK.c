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
struct strbuf {char* buf; } ;
struct ref {int /*<<< orphan*/ * peer_ref; int /*<<< orphan*/  new_oid; scalar_t__ forced_update; int /*<<< orphan*/  old_oid; int /*<<< orphan*/  name; scalar_t__ deletion; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char,char*,struct ref*,int /*<<< orphan*/ *,char const*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(struct ref *ref, int porcelain, int summary_width)
{
	if (ref->deletion)
		FUNC1('-', "[deleted]", ref, NULL, NULL,
				 porcelain, summary_width);
	else if (FUNC0(&ref->old_oid))
		FUNC1('*',
			(FUNC2(ref->name, "refs/tags/") ? "[new tag]" :
			"[new branch]"),
			ref, ref->peer_ref, NULL, porcelain, summary_width);
	else {
		struct strbuf quickref = STRBUF_INIT;
		char type;
		const char *msg;

		FUNC3(&quickref, &ref->old_oid,
					 DEFAULT_ABBREV);
		if (ref->forced_update) {
			FUNC4(&quickref, "...");
			type = '+';
			msg = "forced update";
		} else {
			FUNC4(&quickref, "..");
			type = ' ';
			msg = NULL;
		}
		FUNC3(&quickref, &ref->new_oid,
					 DEFAULT_ABBREV);

		FUNC1(type, quickref.buf, ref, ref->peer_ref, msg,
				 porcelain, summary_width);
		FUNC5(&quickref);
	}
}