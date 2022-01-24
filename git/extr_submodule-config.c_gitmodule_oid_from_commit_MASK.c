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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC1 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct object_id *treeish_name,
				     struct object_id *gitmodules_oid,
				     struct strbuf *rev)
{
	int ret = 0;

	if (FUNC1(treeish_name)) {
		FUNC3(gitmodules_oid);
		return 1;
	}

	FUNC4(rev, "%s:.gitmodules", FUNC2(treeish_name));
	if (FUNC0(rev->buf, gitmodules_oid) >= 0)
		ret = 1;

	return ret;
}