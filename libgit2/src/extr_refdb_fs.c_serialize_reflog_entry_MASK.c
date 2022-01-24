#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_9__ {int size; char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC7(
	git_buf *buf,
	const git_oid *oid_old,
	const git_oid *oid_new,
	const git_signature *committer,
	const char *msg)
{
	char raw_old[GIT_OID_HEXSZ+1];
	char raw_new[GIT_OID_HEXSZ+1];

	FUNC5(raw_old, GIT_OID_HEXSZ+1, oid_old);
	FUNC5(raw_new, GIT_OID_HEXSZ+1, oid_new);

	FUNC0(buf);

	FUNC3(buf, raw_old);
	FUNC2(buf, ' ');
	FUNC3(buf, raw_new);

	FUNC6(buf, " ", committer);

	/* drop trailing LF */
	FUNC4(buf);

	if (msg) {
		size_t i;

		FUNC2(buf, '\t');
		FUNC3(buf, msg);

		for (i = 0; i < buf->size - 2; i++)
			if (buf->ptr[i] == '\n')
				buf->ptr[i] = ' ';
		FUNC4(buf);
	}

	FUNC2(buf, '\n');

	return FUNC1(buf);
}