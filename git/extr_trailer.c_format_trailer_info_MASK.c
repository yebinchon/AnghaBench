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
struct trailer_info {size_t trailer_nr; char** trailers; scalar_t__ trailer_start; scalar_t__ trailer_end; } ;
struct strbuf {size_t len; int /*<<< orphan*/  buf; } ;
struct process_trailer_options {struct strbuf* separator; int /*<<< orphan*/  only_trailers; int /*<<< orphan*/  value_only; scalar_t__ unfold; int /*<<< orphan*/  filter_data; scalar_t__ (* filter ) (struct strbuf*,int /*<<< orphan*/ ) ;} ;
typedef  int ssize_t ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,struct strbuf*,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  separators ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 scalar_t__ FUNC9 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 

__attribute__((used)) static void FUNC11(struct strbuf *out,
				const struct trailer_info *info,
				const struct process_trailer_options *opts)
{
	size_t origlen = out->len;
	size_t i;

	/* If we want the whole block untouched, we can take the fast path. */
	if (!opts->only_trailers && !opts->unfold && !opts->filter && !opts->separator) {
		FUNC2(out, info->trailer_start,
			   info->trailer_end - info->trailer_start);
		return;
	}

	for (i = 0; i < info->trailer_nr; i++) {
		char *trailer = info->trailers[i];
		ssize_t separator_pos = FUNC0(trailer, separators);

		if (separator_pos >= 1) {
			struct strbuf tok = STRBUF_INIT;
			struct strbuf val = STRBUF_INIT;

			FUNC1(&tok, &val, NULL, trailer, separator_pos);
			if (!opts->filter || opts->filter(&tok, opts->filter_data)) {
				if (opts->unfold)
					FUNC10(&val);

				if (opts->separator && out->len != origlen)
					FUNC3(out, opts->separator);
				if (!opts->value_only)
					FUNC5(out, "%s: ", tok.buf);
				FUNC3(out, &val);
				if (!opts->separator)
					FUNC4(out, '\n');
			}
			FUNC7(&tok);
			FUNC7(&val);

		} else if (!opts->only_trailers) {
			if (opts->separator && out->len != origlen) {
				FUNC3(out, opts->separator);
			}
			FUNC6(out, trailer);
			if (opts->separator) {
				FUNC8(out);
			}
		}
	}

}