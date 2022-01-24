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
struct child_process {int /*<<< orphan*/  argv; scalar_t__ git_cmd; int /*<<< orphan*/  env; int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace_default_key ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(const struct child_process *cp)
{
	struct strbuf buf = STRBUF_INIT;

	if (!FUNC7(&trace_default_key))
		return;

	FUNC3(&buf, "trace: run_command:");
	if (cp->dir) {
		FUNC3(&buf, " cd ");
		FUNC1(&buf, cp->dir);
		FUNC2(&buf, ';');
	}
	/*
	 * The caller is responsible for initializing cp->env from
	 * cp->env_array if needed. We only check one place.
	 */
	if (cp->env)
		FUNC5(&buf, cp->env);
	if (cp->git_cmd)
		FUNC3(&buf, " git");
	FUNC0(&buf, cp->argv);

	FUNC6("%s", buf.buf);
	FUNC4(&buf);
}