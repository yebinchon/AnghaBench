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
struct tmp_objdir {int /*<<< orphan*/  path; } ;
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct tmp_objdir*) ; 

int FUNC6(struct tmp_objdir *t)
{
	struct strbuf src = STRBUF_INIT, dst = STRBUF_INIT;
	int ret;

	if (!t)
		return 0;

	FUNC2(&src, &t->path);
	FUNC3(&dst, FUNC0());

	ret = FUNC1(&src, &dst);

	FUNC4(&src);
	FUNC4(&dst);

	FUNC5(t);
	return ret;
}