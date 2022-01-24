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
struct testsuite {int /*<<< orphan*/  failed; } ;
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC2(struct strbuf *out, void *cb, void *task_cb)
{
	struct testsuite *suite = cb;
	const char *name = (const char *)task_cb;

	FUNC1(&suite->failed, name);
	FUNC0(out, "FAILED TO START: '%s'\n", name);

	return 0;
}