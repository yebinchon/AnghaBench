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
typedef  int /*<<< orphan*/  uint64_t ;
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(const char *file, int line, uint64_t us_elapsed_absolute,
		       int exec_id, const char *exe, const char **argv)
{
	struct strbuf buf_payload = STRBUF_INIT;

	FUNC3(&buf_payload, "exec[%d] ", exec_id);
	if (exe) {
		FUNC4(&buf_payload, exe);
		FUNC2(&buf_payload, ' ');
	}
	FUNC1(&buf_payload, argv);
	FUNC0(file, line, &buf_payload);
	FUNC5(&buf_payload);
}