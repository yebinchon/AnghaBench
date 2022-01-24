#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char const* buf; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_list {TYPE_2__* item; scalar_t__ next; } ;
struct commit {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit_list*) ; 
 struct commit* FUNC1 (struct repository*,struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*,int /*<<< orphan*/ *) ; 
 struct commit_list* FUNC3 (struct repository*,struct commit*,struct commit*) ; 
 int FUNC4 (struct repository*,char const*,struct object_id*) ; 
 int FUNC5 (struct repository*,char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 char* FUNC9 (char const*,char*) ; 

int FUNC10(struct repository *r,
		    const char *name,
		    struct object_id *oid)
{
	struct commit *one, *two;
	struct commit_list *mbs;
	struct object_id oid_tmp;
	const char *dots;
	int st;

	dots = FUNC9(name, "...");
	if (!dots)
		return FUNC4(r, name, oid);
	if (dots == name)
		st = FUNC4(r, "HEAD", &oid_tmp);
	else {
		struct strbuf sb;
		FUNC7(&sb, dots - name);
		FUNC6(&sb, name, dots - name);
		st = FUNC5(r, sb.buf, &oid_tmp);
		FUNC8(&sb);
	}
	if (st)
		return st;
	one = FUNC1(r, &oid_tmp, 0);
	if (!one)
		return -1;

	if (FUNC5(r, dots[3] ? (dots + 3) : "HEAD", &oid_tmp))
		return -1;
	two = FUNC1(r, &oid_tmp, 0);
	if (!two)
		return -1;
	mbs = FUNC3(r, one, two);
	if (!mbs || mbs->next)
		st = -1;
	else {
		st = 0;
		FUNC2(oid, &mbs->item->object.oid);
	}
	FUNC0(mbs);
	return st;
}