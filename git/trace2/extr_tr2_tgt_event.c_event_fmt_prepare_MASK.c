#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char const* buf; } ;
struct tr2tls_thread_ctx {TYPE_1__ thread_name; } ;
struct tr2_tbuf {char const* buf; } ;
struct repository {int trace2_repo_id; } ;
struct json_writer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct json_writer*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct json_writer*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 char const* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct tr2_tbuf*) ; 
 int /*<<< orphan*/  tr2env_event_be_brief ; 
 struct tr2tls_thread_ctx* FUNC5 () ; 

__attribute__((used)) static void FUNC6(const char *event_name, const char *file,
			      int line, const struct repository *repo,
			      struct json_writer *jw)
{
	struct tr2tls_thread_ctx *ctx = FUNC5();
	struct tr2_tbuf tb_now;

	FUNC1(jw, "event", event_name);
	FUNC1(jw, "sid", FUNC3());
	FUNC1(jw, "thread", ctx->thread_name.buf);

	/*
	 * In brief mode, only emit <time> on these 2 event types.
	 */
	if (!tr2env_event_be_brief || !FUNC2(event_name, "version") ||
	    !FUNC2(event_name, "atexit")) {
		FUNC4(&tb_now);
		FUNC1(jw, "time", tb_now.buf);
	}

	if (!tr2env_event_be_brief && file && *file) {
		FUNC1(jw, "file", file);
		FUNC0(jw, "line", line);
	}

	if (repo)
		FUNC0(jw, "repo", repo->trace2_repo_id);
}