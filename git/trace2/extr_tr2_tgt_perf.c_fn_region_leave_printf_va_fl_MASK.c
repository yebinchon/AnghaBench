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
typedef  int /*<<< orphan*/  uint64_t ;
struct strbuf {int dummy; } ;
struct repository {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,char const*,struct repository const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

__attribute__((used)) static void FUNC5(
	const char *file, int line, uint64_t us_elapsed_absolute,
	uint64_t us_elapsed_region, const char *category, const char *label,
	const struct repository *repo, const char *fmt, va_list ap)
{
	const char *event_name = "region_leave";
	struct strbuf buf_payload = STRBUF_INIT;

	if (label)
		FUNC3(&buf_payload, "label:%s", label);
	if (fmt && *fmt) {
		FUNC2(&buf_payload, ' ' );
		FUNC0(&buf_payload, fmt, ap);
	}

	FUNC1(file, line, event_name, repo, &us_elapsed_absolute,
			 &us_elapsed_region, category, &buf_payload);
	FUNC4(&buf_payload);
}