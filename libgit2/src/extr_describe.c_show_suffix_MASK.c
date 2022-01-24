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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int GIT_OID_HEXSZ ; 
 int FUNC0 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC5(
	git_buf *buf,
	int depth,
	git_repository *repo,
	const git_oid* id,
	unsigned int abbrev_size)
{
	int error, size = 0;

	char hex_oid[GIT_OID_HEXSZ];

	if ((error = FUNC0(&size, repo, id, abbrev_size)) < 0)
		return error;

	FUNC4(hex_oid, id);

	FUNC2(buf, "-%d-g", depth);

	FUNC3(buf, hex_oid, size);

	return FUNC1(buf) ? -1 : 0;
}