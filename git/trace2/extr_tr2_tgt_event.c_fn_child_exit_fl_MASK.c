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
typedef  scalar_t__ uint64_t ;
struct json_writer {int /*<<< orphan*/  json; } ;

/* Variables and functions */
 struct json_writer JSON_WRITER_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int,int /*<<< orphan*/ *,struct json_writer*) ; 
 int /*<<< orphan*/  FUNC1 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC2 (struct json_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct json_writer*,char*,int,double) ; 
 int /*<<< orphan*/  FUNC4 (struct json_writer*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tr2dst_event ; 

__attribute__((used)) static void FUNC7(const char *file, int line,
			     uint64_t us_elapsed_absolute, int cid, int pid,
			     int code, uint64_t us_elapsed_child)
{
	const char *event_name = "child_exit";
	struct json_writer jw = JSON_WRITER_INIT;
	double t_rel = (double)us_elapsed_child / 1000000.0;

	FUNC2(&jw, 0);
	FUNC0(event_name, file, line, NULL, &jw);
	FUNC4(&jw, "child_id", cid);
	FUNC4(&jw, "pid", pid);
	FUNC4(&jw, "code", code);
	FUNC3(&jw, "t_rel", 6, t_rel);
	FUNC1(&jw);

	FUNC6(&tr2dst_event, &jw.json);

	FUNC5(&jw);
}