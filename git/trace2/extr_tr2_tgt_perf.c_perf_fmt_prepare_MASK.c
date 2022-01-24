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
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct tr2tls_thread_ctx {scalar_t__ nr_open_regions; TYPE_1__ thread_name; } ;
struct tr2_tbuf {char* buf; } ;
struct strbuf {int len; int /*<<< orphan*/ * buf; } ;
struct repository {int /*<<< orphan*/  trace2_repo_id; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  TR2FMT_PERF_CATEGORY_WIDTH ; 
 int TR2FMT_PERF_FL_WIDTH ; 
 int /*<<< orphan*/  TR2FMT_PERF_MAX_EVENT_NAME ; 
 int TR2FMT_PERF_REPO_WIDTH ; 
 int FUNC0 (struct tr2tls_thread_ctx*) ; 
 int /*<<< orphan*/  TR2_MAX_THREAD_NAME ; 
 struct strbuf dots ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct tr2_tbuf*) ; 
 int /*<<< orphan*/  tr2env_perf_be_brief ; 

__attribute__((used)) static void FUNC10(const char *event_name,
			     struct tr2tls_thread_ctx *ctx, const char *file,
			     int line, const struct repository *repo,
			     uint64_t *p_us_elapsed_absolute,
			     uint64_t *p_us_elapsed_relative,
			     const char *category, struct strbuf *buf)
{
	int len;

	FUNC7(buf, 0);

	if (!tr2env_perf_be_brief) {
		struct tr2_tbuf tb_now;
		size_t fl_end_col;

		FUNC9(&tb_now);
		FUNC5(buf, tb_now.buf);
		FUNC3(buf, ' ');

		fl_end_col = buf->len + TR2FMT_PERF_FL_WIDTH;

		if (file && *file) {
			struct strbuf buf_fl = STRBUF_INIT;

			FUNC4(&buf_fl, "%s:%d", file, line);

			if (buf_fl.len <= TR2FMT_PERF_FL_WIDTH)
				FUNC2(buf, &buf_fl);
			else {
				size_t avail = TR2FMT_PERF_FL_WIDTH - 3;
				FUNC5(buf, "...");
				FUNC1(buf,
					   &buf_fl.buf[buf_fl.len - avail],
					   avail);
			}

			FUNC6(&buf_fl);
		}

		while (buf->len < fl_end_col)
			FUNC3(buf, ' ');

		FUNC5(buf, " | ");
	}

	FUNC4(buf, "d%d | ", FUNC8());
	FUNC4(buf, "%-*s | %-*s | ", TR2_MAX_THREAD_NAME,
		    ctx->thread_name.buf, TR2FMT_PERF_MAX_EVENT_NAME,
		    event_name);

	len = buf->len + TR2FMT_PERF_REPO_WIDTH;
	if (repo)
		FUNC4(buf, "r%d ", repo->trace2_repo_id);
	while (buf->len < len)
		FUNC3(buf, ' ');
	FUNC5(buf, " | ");

	if (p_us_elapsed_absolute)
		FUNC4(buf, "%9.6f | ",
			    ((double)(*p_us_elapsed_absolute)) / 1000000.0);
	else
		FUNC4(buf, "%9s | ", " ");

	if (p_us_elapsed_relative)
		FUNC4(buf, "%9.6f | ",
			    ((double)(*p_us_elapsed_relative)) / 1000000.0);
	else
		FUNC4(buf, "%9s | ", " ");

	FUNC4(buf, "%-*.*s | ", TR2FMT_PERF_CATEGORY_WIDTH,
		    TR2FMT_PERF_CATEGORY_WIDTH, (category ? category : ""));

	if (ctx->nr_open_regions > 0) {
		int len_indent = FUNC0(ctx);
		while (len_indent > dots.len) {
			FUNC2(buf, &dots);
			len_indent -= dots.len;
		}
		FUNC4(buf, "%.*s", len_indent, dots.buf);
	}
}