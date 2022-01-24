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
struct tr2tls_thread_ctx {scalar_t__ nr_open_regions; } ;
struct repository {int dummy; } ;
struct json_writer {int /*<<< orphan*/  json; } ;

/* Variables and functions */
 struct json_writer JSON_WRITER_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int,struct repository const*,struct json_writer*) ; 
 int /*<<< orphan*/  FUNC1 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC2 (struct json_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct json_writer*,char*,int,double) ; 
 int /*<<< orphan*/  FUNC4 (struct json_writer*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct json_writer*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct json_writer*,char*,struct json_writer const*) ; 
 int /*<<< orphan*/  FUNC7 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tr2dst_event ; 
 scalar_t__ tr2env_event_max_nesting_levels ; 
 struct tr2tls_thread_ctx* FUNC9 () ; 

__attribute__((used)) static void FUNC10(const char *file, int line,
			    uint64_t us_elapsed_absolute,
			    uint64_t us_elapsed_region, const char *category,
			    const struct repository *repo, const char *key,
			    const struct json_writer *value)
{
	const char *event_name = "data_json";
	struct tr2tls_thread_ctx *ctx = FUNC9();
	if (ctx->nr_open_regions <= tr2env_event_max_nesting_levels) {
		struct json_writer jw = JSON_WRITER_INIT;
		double t_abs = (double)us_elapsed_absolute / 1000000.0;
		double t_rel = (double)us_elapsed_region / 1000000.0;

		FUNC2(&jw, 0);
		FUNC0(event_name, file, line, repo, &jw);
		FUNC3(&jw, "t_abs", 6, t_abs);
		FUNC3(&jw, "t_rel", 6, t_rel);
		FUNC4(&jw, "nesting", ctx->nr_open_regions);
		FUNC5(&jw, "category", category);
		FUNC5(&jw, "key", key);
		FUNC6(&jw, "value", value);
		FUNC1(&jw);

		FUNC8(&tr2dst_event, &jw.json);
		FUNC7(&jw);
	}
}