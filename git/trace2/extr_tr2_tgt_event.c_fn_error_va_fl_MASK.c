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
struct json_writer {int /*<<< orphan*/  json; } ;

/* Variables and functions */
 struct json_writer JSON_WRITER_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int,int /*<<< orphan*/ *,struct json_writer*) ; 
 int /*<<< orphan*/  FUNC1 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC2 (struct json_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct json_writer*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC5 (struct json_writer*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tr2dst_event ; 

__attribute__((used)) static void FUNC7(const char *file, int line, const char *fmt,
			   va_list ap)
{
	const char *event_name = "error";
	struct json_writer jw = JSON_WRITER_INIT;

	FUNC2(&jw, 0);
	FUNC0(event_name, file, line, NULL, &jw);
	FUNC5(&jw, "msg", fmt, ap);
	/*
	 * Also emit the format string as a field in case
	 * post-processors want to aggregate common error
	 * messages by type without argument fields (such
	 * as pathnames or branch names) cluttering it up.
	 */
	if (fmt && *fmt)
		FUNC3(&jw, "fmt", fmt);
	FUNC1(&jw);

	FUNC6(&tr2dst_event, &jw.json);
	FUNC4(&jw);
}