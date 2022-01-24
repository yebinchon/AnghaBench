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
typedef  int /*<<< orphan*/  uint64_t ;
struct tr2tls_thread_ctx {int dummy; } ;
struct strbuf {int dummy; } ;
struct repository {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct tr2tls_thread_ctx*,char const*,int,struct repository const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,struct strbuf const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  tr2dst_perf ; 
 struct tr2tls_thread_ctx* FUNC4 () ; 

__attribute__((used)) static void FUNC5(const char *file, int line, const char *event_name,
			     const struct repository *repo,
			     uint64_t *p_us_elapsed_absolute,
			     uint64_t *p_us_elapsed_relative,
			     const char *category,
			     const struct strbuf *buf_payload)
{
	struct tr2tls_thread_ctx *ctx = FUNC4();
	struct strbuf buf_line = STRBUF_INIT;

	FUNC0(event_name, ctx, file, line, repo,
			 p_us_elapsed_absolute, p_us_elapsed_relative, category,
			 &buf_line);
	FUNC1(&buf_line, buf_payload);
	FUNC3(&tr2dst_perf, &buf_line);
	FUNC2(&buf_line);
}