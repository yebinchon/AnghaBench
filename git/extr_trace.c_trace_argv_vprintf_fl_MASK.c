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
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace_default_key ; 

__attribute__((used)) static void FUNC5(const char *file, int line,
				  const char **argv, const char *format,
				  va_list ap)
{
	struct strbuf buf = STRBUF_INIT;

	if (!FUNC0(file, line, &trace_default_key, &buf))
		return;

	FUNC4(&buf, format, ap);

	FUNC2(&buf, argv);
	FUNC1(&trace_default_key, &buf);
	FUNC3(&buf);
}