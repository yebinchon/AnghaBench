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
typedef  int /*<<< orphan*/  va_list ;
typedef  scalar_t__ uint64_t ;
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  perf_indent ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,double,...) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  trace_perf_key ; 

__attribute__((used)) static void FUNC7(const char *file, int line,
					 uint64_t nanos, const char *format,
					 va_list ap)
{
	static const char space[] = "          ";
	struct strbuf buf = STRBUF_INIT;

	if (!FUNC1(file, line, &trace_perf_key, &buf))
		return;

	FUNC3(&buf, "performance: %.9f s", (double) nanos / 1000000000);

	if (format && *format) {
		if (perf_indent >= FUNC6(space))
			FUNC0("Too deep indentation");

		FUNC3(&buf, ":%.*s ", perf_indent, space);
		FUNC5(&buf, format, ap);
	}

	FUNC2(&trace_perf_key, &buf);
	FUNC4(&buf);
}