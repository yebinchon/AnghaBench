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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct repository {int dummy; } ;
struct pretty_print_context {char* output_encoding; } ;
struct format_commit_context {char const* commit_encoding; int /*<<< orphan*/  message; int /*<<< orphan*/  wrap_start; struct pretty_print_context const* pretty_ctx; struct commit const* commit; } ;
struct commit {int dummy; } ;
typedef  int /*<<< orphan*/  context ;

/* Variables and functions */
 int /*<<< orphan*/  format_commit_item ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct format_commit_context*,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*,struct commit const*,char const**,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct repository*,struct commit const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,struct format_commit_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char const*,int /*<<< orphan*/ ,struct format_commit_context*) ; 

void FUNC9(struct repository *r,
				const struct commit *commit,
				const char *format, struct strbuf *sb,
				const struct pretty_print_context *pretty_ctx)
{
	struct format_commit_context context;
	const char *output_enc = pretty_ctx->output_encoding;
	const char *utf8 = "UTF-8";

	FUNC1(&context, 0, sizeof(context));
	context.commit = commit;
	context.pretty_ctx = pretty_ctx;
	context.wrap_start = sb->len;
	/*
	 * convert a commit message to UTF-8 first
	 * as far as 'format_commit_item' assumes it in UTF-8
	 */
	context.message = FUNC3(r, commit,
					       &context.commit_encoding,
					       utf8);

	FUNC8(sb, format, format_commit_item, &context);
	FUNC5(sb, &context, 0, 0, 0);

	/* then convert a commit message to an actual output encoding */
	if (output_enc) {
		if (FUNC6(utf8, output_enc))
			output_enc = NULL;
	} else {
		if (context.commit_encoding &&
		    !FUNC6(context.commit_encoding, utf8))
			output_enc = context.commit_encoding;
	}

	if (output_enc) {
		size_t outsz;
		char *out = FUNC2(sb->buf, sb->len,
						output_enc, utf8, &outsz);
		if (out)
			FUNC7(sb, out, outsz, outsz + 1);
	}

	FUNC0(context.commit_encoding);
	FUNC4(r, commit, context.message);
}