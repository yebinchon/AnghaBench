#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct string_list {int dummy; } ;
struct strbuf {int /*<<< orphan*/  len; } ;
struct process_trailer_options {int no_divider; int only_trailers; int unfold; int value_only; struct strbuf* separator; struct string_list* filter_data; int /*<<< orphan*/  filter; } ;
struct TYPE_15__ {int /*<<< orphan*/  len; int /*<<< orphan*/  off; } ;
struct TYPE_14__ {int /*<<< orphan*/  len; int /*<<< orphan*/  off; } ;
struct TYPE_18__ {char result; char const* gpg_output; char const* signer; char const* key; char const* fingerprint; char const* primary_key_fingerprint; } ;
struct format_commit_context {char* message; char const* commit_encoding; int subject_off; int /*<<< orphan*/  body_off; int /*<<< orphan*/  commit_message_parsed; int /*<<< orphan*/  message_off; TYPE_7__* pretty_ctx; TYPE_6__ committer; TYPE_5__ author; int /*<<< orphan*/  commit_header_parsed; TYPE_9__ signature_check; struct commit* commit; int /*<<< orphan*/  auto_color; } ;
struct commit_list {TYPE_3__* item; struct commit_list* next; } ;
struct TYPE_10__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  parsed; } ;
struct commit {struct commit_list* parents; TYPE_1__ object; } ;
struct TYPE_17__ {char* util; } ;
struct TYPE_16__ {char const* notes_message; int /*<<< orphan*/  date_mode; int /*<<< orphan*/  reflog_info; int /*<<< orphan*/  date_mode_explicit; TYPE_4__* rev; int /*<<< orphan*/  abbrev; int /*<<< orphan*/  color; } ;
struct TYPE_13__ {int /*<<< orphan*/  sources; } ;
struct TYPE_11__ {int /*<<< orphan*/  oid; } ;
struct TYPE_12__ {TYPE_2__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_COMMIT ; 
 int /*<<< orphan*/  DIFF_RESET ; 
 char const* GIT_COLOR_RESET ; 
 struct process_trailer_options PROCESS_TRAILER_OPTIONS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_NODUP ; 
 int /*<<< orphan*/  FUNC0 (struct commit*,TYPE_9__*) ; 
 char const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,struct commit const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,struct commit const*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 size_t FUNC4 (struct strbuf*,char const,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (struct strbuf*,char const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char const*,char*) ; 
 int /*<<< orphan*/  format_trailer_match_cb ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char const*,struct process_trailer_options*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 (struct commit const*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char const* FUNC13 (int /*<<< orphan*/ *,struct commit const*) ; 
 scalar_t__ FUNC14 (char const*,char*,char const**,char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC15 (char const*,char*,char const**,int*) ; 
 char const* FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct strbuf*,char const*,struct format_commit_context*) ; 
 int /*<<< orphan*/  FUNC18 (struct format_commit_context*) ; 
 int /*<<< orphan*/  FUNC19 (struct format_commit_context*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC21 (char const*,struct format_commit_context*) ; 
 char** FUNC22 (int /*<<< orphan*/ ,struct commit const*) ; 
 int /*<<< orphan*/  FUNC23 (struct strbuf*,struct format_commit_context*,unsigned long,unsigned long,unsigned long) ; 
 scalar_t__ FUNC24 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC25 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC26 (struct strbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC28 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC29 (struct strbuf*,char*,size_t (*) (struct strbuf*,char const*,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 
 size_t FUNC30 (struct strbuf*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC32 (struct strbuf*) ; 
 char* FUNC33 (char const*,char) ; 
 TYPE_8__* FUNC34 (struct string_list*,char const*) ; 
 int /*<<< orphan*/  FUNC35 (struct string_list*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC36 (char const*,char**,int) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 char* FUNC38 (char const*,size_t) ; 

__attribute__((used)) static size_t FUNC39(struct strbuf *sb, /* in UTF-8 */
				const char *placeholder,
				void *context)
{
	struct format_commit_context *c = context;
	const struct commit *commit = c->commit;
	const char *msg = c->message;
	struct commit_list *p;
	const char *arg;
	size_t res;
	char **slot;

	/* these are independent of the commit */
	res = FUNC30(sb, placeholder, NULL);
	if (res)
		return res;

	switch (placeholder[0]) {
	case 'C':
		if (FUNC25(placeholder + 1, "(auto)")) {
			c->auto_color = FUNC37(c->pretty_ctx->color);
			if (c->auto_color && sb->len)
				FUNC28(sb, GIT_COLOR_RESET);
			return 7; /* consumed 7 bytes, "C(auto)" */
		} else {
			int ret = FUNC17(sb, placeholder, c);
			if (ret)
				c->auto_color = 0;
			/*
			 * Otherwise, we decided to treat %C<unknown>
			 * as a literal string, and the previous
			 * %C(auto) is still valid.
			 */
			return ret;
		}
	case 'w':
		if (placeholder[1] == '(') {
			unsigned long width = 0, indent1 = 0, indent2 = 0;
			char *next;
			const char *start = placeholder + 2;
			const char *end = FUNC33(start, ')');
			if (!end)
				return 0;
			if (end > start) {
				width = FUNC36(start, &next, 10);
				if (*next == ',') {
					indent1 = FUNC36(next + 1, &next, 10);
					if (*next == ',') {
						indent2 = FUNC36(next + 1,
								 &next, 10);
					}
				}
				if (*next != ')')
					return 0;
			}
			FUNC23(sb, c, width, indent1, indent2);
			return end - placeholder + 1;
		} else
			return 0;

	case '<':
	case '>':
		return FUNC21(placeholder, c);
	}

	/* these depend on the commit */
	if (!commit->object.parsed)
		FUNC20(the_repository, &commit->object.oid);

	switch (placeholder[0]) {
	case 'H':		/* commit hash */
		FUNC28(sb, FUNC1(c->auto_color, DIFF_COMMIT));
		FUNC28(sb, FUNC16(&commit->object.oid));
		FUNC28(sb, FUNC1(c->auto_color, DIFF_RESET));
		return 1;
	case 'h':		/* abbreviated commit hash */
		FUNC28(sb, FUNC1(c->auto_color, DIFF_COMMIT));
		FUNC26(sb, &commit->object.oid,
					 c->pretty_ctx->abbrev);
		FUNC28(sb, FUNC1(c->auto_color, DIFF_RESET));
		return 1;
	case 'T':		/* tree hash */
		FUNC28(sb, FUNC16(FUNC10(commit)));
		return 1;
	case 't':		/* abbreviated tree hash */
		FUNC26(sb,
					 FUNC10(commit),
					 c->pretty_ctx->abbrev);
		return 1;
	case 'P':		/* parent hashes */
		for (p = commit->parents; p; p = p->next) {
			if (p != commit->parents)
				FUNC27(sb, ' ');
			FUNC28(sb, FUNC16(&p->item->object.oid));
		}
		return 1;
	case 'p':		/* abbreviated parent hashes */
		for (p = commit->parents; p; p = p->next) {
			if (p != commit->parents)
				FUNC27(sb, ' ');
			FUNC26(sb, &p->item->object.oid,
						 c->pretty_ctx->abbrev);
		}
		return 1;
	case 'm':		/* left/right/bottom */
		FUNC28(sb, FUNC13(NULL, commit));
		return 1;
	case 'd':
		FUNC2(sb, commit, c->auto_color);
		return 1;
	case 'D':
		FUNC3(sb, commit, c->auto_color, "", ", ", "");
		return 1;
	case 'S':		/* tag/branch like --source */
		if (!(c->pretty_ctx->rev && c->pretty_ctx->rev->sources))
			return 0;
		slot = FUNC22(c->pretty_ctx->rev->sources, commit);
		if (!(slot && *slot))
			return 0;
		FUNC28(sb, *slot);
		return 1;
	case 'g':		/* reflog info */
		switch(placeholder[1]) {
		case 'd':	/* reflog selector */
		case 'D':
			if (c->pretty_ctx->reflog_info)
				FUNC12(sb,
						    c->pretty_ctx->reflog_info,
						    &c->pretty_ctx->date_mode,
						    c->pretty_ctx->date_mode_explicit,
						    (placeholder[1] == 'd'));
			return 2;
		case 's':	/* reflog message */
			if (c->pretty_ctx->reflog_info)
				FUNC11(sb, c->pretty_ctx->reflog_info);
			return 2;
		case 'n':
		case 'N':
		case 'e':
		case 'E':
			return FUNC5(sb,
						    placeholder[1],
						    c->pretty_ctx->reflog_info,
						    &c->pretty_ctx->date_mode);
		}
		return 0;	/* unknown %g placeholder */
	case 'N':
		if (c->pretty_ctx->notes_message) {
			FUNC28(sb, c->pretty_ctx->notes_message);
			return 1;
		}
		return 0;
	}

	if (placeholder[0] == 'G') {
		if (!c->signature_check.result)
			FUNC0(c->commit, &(c->signature_check));
		switch (placeholder[1]) {
		case 'G':
			if (c->signature_check.gpg_output)
				FUNC28(sb, c->signature_check.gpg_output);
			break;
		case '?':
			switch (c->signature_check.result) {
			case 'G':
			case 'B':
			case 'E':
			case 'U':
			case 'N':
			case 'X':
			case 'Y':
			case 'R':
				FUNC27(sb, c->signature_check.result);
			}
			break;
		case 'S':
			if (c->signature_check.signer)
				FUNC28(sb, c->signature_check.signer);
			break;
		case 'K':
			if (c->signature_check.key)
				FUNC28(sb, c->signature_check.key);
			break;
		case 'F':
			if (c->signature_check.fingerprint)
				FUNC28(sb, c->signature_check.fingerprint);
			break;
		case 'P':
			if (c->signature_check.primary_key_fingerprint)
				FUNC28(sb, c->signature_check.primary_key_fingerprint);
			break;
		default:
			return 0;
		}
		return 2;
	}


	/* For the rest we have to parse the commit header. */
	if (!c->commit_header_parsed)
		FUNC18(c);

	switch (placeholder[0]) {
	case 'a':	/* author ... */
		return FUNC4(sb, placeholder[1],
				   msg + c->author.off, c->author.len,
				   &c->pretty_ctx->date_mode);
	case 'c':	/* committer ... */
		return FUNC4(sb, placeholder[1],
				   msg + c->committer.off, c->committer.len,
				   &c->pretty_ctx->date_mode);
	case 'e':	/* encoding */
		if (c->commit_encoding)
			FUNC28(sb, c->commit_encoding);
		return 1;
	case 'B':	/* raw body */
		/* message_off is always left at the initial newline */
		FUNC28(sb, msg + c->message_off + 1);
		return 1;
	}

	/* Now we need to parse the commit message. */
	if (!c->commit_message_parsed)
		FUNC19(c);

	switch (placeholder[0]) {
	case 's':	/* subject */
		FUNC7(sb, msg + c->subject_off, " ");
		return 1;
	case 'f':	/* sanitized subject */
		FUNC6(sb, msg + c->subject_off);
		return 1;
	case 'b':	/* body */
		FUNC28(sb, msg + c->body_off);
		return 1;
	}

	if (FUNC24(placeholder, "(trailers", &arg)) {
		struct process_trailer_options opts = PROCESS_TRAILER_OPTIONS_INIT;
		struct string_list filter_list = STRING_LIST_INIT_NODUP;
		struct strbuf sepbuf = STRBUF_INIT;
		size_t ret = 0;

		opts.no_divider = 1;

		if (*arg == ':') {
			arg++;
			for (;;) {
				const char *argval;
				size_t arglen;

				if (FUNC14(arg, "key", &arg, &argval, &arglen)) {
					uintptr_t len = arglen;

					if (!argval)
						goto trailer_out;

					if (len && argval[len - 1] == ':')
						len--;
					FUNC34(&filter_list, argval)->util = (char *)len;

					opts.filter = format_trailer_match_cb;
					opts.filter_data = &filter_list;
					opts.only_trailers = 1;
				} else if (FUNC14(arg, "separator", &arg, &argval, &arglen)) {
					char *fmt;

					FUNC32(&sepbuf);
					fmt = FUNC38(argval, arglen);
					FUNC29(&sepbuf, fmt, strbuf_expand_literal_cb, NULL);
					FUNC9(fmt);
					opts.separator = &sepbuf;
				} else if (!FUNC15(arg, "only", &arg, &opts.only_trailers) &&
					   !FUNC15(arg, "unfold", &arg, &opts.unfold) &&
					   !FUNC15(arg, "valueonly", &arg, &opts.value_only))
					break;
			}
		}
		if (*arg == ')') {
			FUNC8(sb, msg + c->subject_off, &opts);
			ret = arg - placeholder + 1;
		}
	trailer_out:
		FUNC35(&filter_list, 0);
		FUNC31(&sepbuf);
		return ret;
	}

	return 0;	/* unknown placeholder */
}