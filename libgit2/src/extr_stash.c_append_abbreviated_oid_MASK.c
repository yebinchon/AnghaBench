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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC5(git_buf *out, const git_oid *b_commit)
{
	char *formatted_oid;

	formatted_oid = FUNC4(b_commit);
	FUNC0(formatted_oid);

	FUNC3(out, formatted_oid, 7);
	FUNC1(formatted_oid);

	return FUNC2(out) ? -1 : 0;
}