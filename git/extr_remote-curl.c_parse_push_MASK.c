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
struct strbuf {int /*<<< orphan*/ * buf; } ;
struct argv_array {int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC9 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 

__attribute__((used)) static void FUNC11(struct strbuf *buf)
{
	struct argv_array specs = ARGV_ARRAY_INIT;
	int ret;

	do {
		if (FUNC8(buf->buf, "push "))
			FUNC2(&specs, buf->buf + 5);
		else
			FUNC3(FUNC0("http transport does not support %s"), buf->buf);

		FUNC10(buf);
		if (FUNC9(buf, stdin) == EOF)
			goto free_specs;
		if (!*buf->buf)
			break;
	} while (1);

	ret = FUNC7(specs.argc, specs.argv);
	FUNC6("\n");
	FUNC5(stdout);

	if (ret)
		FUNC4(128); /* error already reported */

 free_specs:
	FUNC1(&specs);
}