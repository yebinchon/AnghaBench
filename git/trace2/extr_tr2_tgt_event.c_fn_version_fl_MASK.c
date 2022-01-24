#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct json_writer {int /*<<< orphan*/  json; } ;
struct TYPE_3__ {scalar_t__ too_many_files; } ;

/* Variables and functions */
 struct json_writer JSON_WRITER_INIT ; 
 int /*<<< orphan*/  TR2_EVENT_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int,int /*<<< orphan*/ *,struct json_writer*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  git_version_string ; 
 int /*<<< orphan*/  FUNC2 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC3 (struct json_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct json_writer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__ tr2dst_event ; 

__attribute__((used)) static void FUNC7(const char *file, int line)
{
	const char *event_name = "version";
	struct json_writer jw = JSON_WRITER_INIT;

	FUNC3(&jw, 0);
	FUNC0(event_name, file, line, NULL, &jw);
	FUNC4(&jw, "evt", TR2_EVENT_VERSION);
	FUNC4(&jw, "exe", git_version_string);
	FUNC2(&jw);

	FUNC6(&tr2dst_event, &jw.json);
	FUNC5(&jw);

	if (tr2dst_event.too_many_files)
		FUNC1(file, line);
}