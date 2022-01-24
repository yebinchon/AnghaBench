#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  oid ;
typedef  int /*<<< orphan*/  git_filter_source ;
struct TYPE_8__ {char* ptr; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int GIT_OID_HEXSZ ; 
 int GIT_PASSTHROUGH ; 
 scalar_t__ FUNC0 (TYPE_1__*,size_t) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const**,char const**,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(
	git_buf *to, const git_buf *from, const git_filter_source *src)
{
	char oid[GIT_OID_HEXSZ+1];
	const char *id_start, *id_end, *from_end = from->ptr + from->size;
	size_t need_size;

	/* replace $Id$ with blob id */

	if (!FUNC4(src))
		return GIT_PASSTHROUGH;

	FUNC5(oid, sizeof(oid), FUNC4(src));

	if (FUNC6(&id_start, &id_end, from->ptr, from->size) < 0)
		return GIT_PASSTHROUGH;

	need_size = (size_t)(id_start - from->ptr) +
		5 /* "$Id: " */ + GIT_OID_HEXSZ + 2 /* " $" */ +
		(size_t)(from_end - id_end);

	if (FUNC0(to, need_size) < 0)
		return -1;

	FUNC3(to, from->ptr, (size_t)(id_start - from->ptr));
	FUNC2(to, "$Id: ", 5);
	FUNC2(to, oid, GIT_OID_HEXSZ);
	FUNC2(to, " $", 2);
	FUNC2(to, id_end, (size_t)(from_end - id_end));

	return FUNC1(to) ? -1 : 0;
}