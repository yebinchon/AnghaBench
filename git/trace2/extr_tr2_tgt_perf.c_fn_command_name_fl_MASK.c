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
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static void FUNC4(const char *file, int line, const char *name,
			       const char *hierarchy)
{
	const char *event_name = "cmd_name";
	struct strbuf buf_payload = STRBUF_INIT;

	FUNC2(&buf_payload, name);
	if (hierarchy && *hierarchy)
		FUNC1(&buf_payload, " (%s)", hierarchy);

	FUNC0(file, line, event_name, NULL, NULL, NULL, NULL,
			 &buf_payload);
	FUNC3(&buf_payload);
}