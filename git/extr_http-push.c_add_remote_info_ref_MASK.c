#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct remote_ls_ctx {char* dentry_name; scalar_t__ userData; } ;
struct ref {int /*<<< orphan*/  old_oid; } ;
struct object {scalar_t__ type; int /*<<< orphan*/  oid; } ;
struct TYPE_2__ {char* url; } ;

/* Variables and functions */
 scalar_t__ OBJ_TAG ; 
 int aborted ; 
 struct ref* FUNC0 (char*) ; 
 struct object* FUNC1 (int /*<<< orphan*/ ,struct object*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ref*) ; 
 scalar_t__ FUNC4 (char*,struct ref*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 struct object* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* repo ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,char*,char*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC8(struct remote_ls_ctx *ls)
{
	struct strbuf *buf = (struct strbuf *)ls->userData;
	struct object *o;
	struct ref *ref;

	ref = FUNC0(ls->dentry_name);

	if (FUNC4(repo->url, ref) != 0) {
		FUNC2(stderr,
			"Unable to fetch ref %s from %s\n",
			ls->dentry_name, repo->url);
		aborted = 1;
		FUNC3(ref);
		return;
	}

	o = FUNC6(the_repository, &ref->old_oid);
	if (!o) {
		FUNC2(stderr,
			"Unable to parse object %s for remote ref %s\n",
			FUNC5(&ref->old_oid), ls->dentry_name);
		aborted = 1;
		FUNC3(ref);
		return;
	}

	FUNC7(buf, "%s\t%s\n",
		    FUNC5(&ref->old_oid), ls->dentry_name);

	if (o->type == OBJ_TAG) {
		o = FUNC1(the_repository, o, ls->dentry_name, 0);
		if (o)
			FUNC7(buf, "%s\t%s^{}\n",
				    FUNC5(&o->oid), ls->dentry_name);
	}
	FUNC3(ref);
}