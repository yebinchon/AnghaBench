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
struct tr2tls_thread_ctx {scalar_t__ nr_open_regions; } ;
struct repository {int dummy; } ;
struct json_writer {int /*<<< orphan*/  json; } ;

/* Variables and functions */
 struct json_writer JSON_WRITER_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int,struct repository const*,struct json_writer*) ; 
 int /*<<< orphan*/  FUNC1 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC2 (struct json_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct json_writer*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct json_writer*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC6 (struct json_writer*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tr2dst_event ; 
 scalar_t__ tr2env_event_max_nesting_levels ; 
 struct tr2tls_thread_ctx* FUNC8 () ; 

__attribute__((used)) static void FUNC9(const char *file, int line,
					 uint64_t us_elapsed_absolute,
					 const char *category,
					 const char *label,
					 const struct repository *repo,
					 const char *fmt, va_list ap)
{
	const char *event_name = "region_enter";
	struct tr2tls_thread_ctx *ctx = FUNC8();
	if (ctx->nr_open_regions <= tr2env_event_max_nesting_levels) {
		struct json_writer jw = JSON_WRITER_INIT;

		FUNC2(&jw, 0);
		FUNC0(event_name, file, line, repo, &jw);
		FUNC3(&jw, "nesting", ctx->nr_open_regions);
		if (category)
			FUNC4(&jw, "category", category);
		if (label)
			FUNC4(&jw, "label", label);
		FUNC6(&jw, "msg", fmt, ap);
		FUNC1(&jw);

		FUNC7(&tr2dst_event, &jw.json);
		FUNC5(&jw);
	}
}