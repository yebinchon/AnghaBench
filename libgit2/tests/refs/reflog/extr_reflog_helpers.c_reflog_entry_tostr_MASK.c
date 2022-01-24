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
typedef  int /*<<< orphan*/  git_reflog_entry ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC6(git_buf *out, const git_reflog_entry *entry)
{
	char old_oid[GIT_OID_HEXSZ], new_oid[GIT_OID_HEXSZ];

	FUNC0(out && entry);

	FUNC2((char *)&old_oid, GIT_OID_HEXSZ, FUNC4(entry));
	FUNC2((char *)&new_oid, GIT_OID_HEXSZ, FUNC3(entry));

	return FUNC1(out, "%s %s %s %s", old_oid, new_oid, "somesig", FUNC5(entry));
}