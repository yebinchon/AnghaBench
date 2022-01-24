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
struct strbuf {char const* buf; size_t len; } ;
struct pretty_print_context {int fmt; int /*<<< orphan*/  date_mode; TYPE_1__* from_ident; int /*<<< orphan*/  in_body_headers; scalar_t__ mailmap; } ;
struct ident_split {char* mail_begin; char* mail_end; char* name_begin; char* name_end; } ;
struct TYPE_2__ {char* mail_begin; char const* mail_end; char* name_begin; char const* name_end; } ;

/* Variables and functions */
#define  CMIT_FMT_EMAIL 131 
#define  CMIT_FMT_FULLER 130 
#define  CMIT_FMT_MBOXRD 129 
#define  CMIT_FMT_MEDIUM 128 
 int CMIT_FMT_ONELINE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFC2047_ADDRESS ; 
 int /*<<< orphan*/  RFC2822 ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*,size_t,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*,size_t) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,struct ident_split*) ; 
 size_t FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char const**,size_t*,char const**,size_t*) ; 
 scalar_t__ FUNC7 (char const*,size_t) ; 
 scalar_t__ FUNC8 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct ident_split*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct ident_split*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char const*,size_t,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*) ; 
 char* FUNC18 (char const*,char) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC20 (char*) ; 

void FUNC21(struct pretty_print_context *pp,
		  const char *what, struct strbuf *sb,
		  const char *line, const char *encoding)
{
	struct ident_split ident;
	char *line_end;
	const char *mailbuf, *namebuf;
	size_t namelen, maillen;
	int max_length = 78; /* per rfc2822 */

	if (pp->fmt == CMIT_FMT_ONELINE)
		return;

	line_end = FUNC18(line, '\n');
	if (FUNC10(&ident, line, line_end - line))
		return;

	mailbuf = ident.mail_begin;
	maillen = ident.mail_end - ident.mail_begin;
	namebuf = ident.name_begin;
	namelen = ident.name_end - ident.name_begin;

	if (pp->mailmap)
		FUNC6(pp->mailmap, &mailbuf, &maillen, &namebuf, &namelen);

	if (FUNC3(pp->fmt)) {
		if (pp->from_ident && FUNC4(pp->from_ident, &ident)) {
			struct strbuf buf = STRBUF_INIT;

			FUNC15(&buf, "From: ");
			FUNC11(&buf, namebuf, namelen);
			FUNC15(&buf, " <");
			FUNC11(&buf, mailbuf, maillen);
			FUNC15(&buf, ">\n");
			FUNC19(&pp->in_body_headers,
					   FUNC16(&buf, NULL));

			mailbuf = pp->from_ident->mail_begin;
			maillen = pp->from_ident->mail_end - mailbuf;
			namebuf = pp->from_ident->name_begin;
			namelen = pp->from_ident->name_end - namebuf;
		}

		FUNC15(sb, "From: ");
		if (FUNC7(namebuf, namelen)) {
			FUNC1(sb, namebuf, namelen,
				    encoding, RFC2047_ADDRESS);
			max_length = 76; /* per rfc2047 */
		} else if (FUNC8(namebuf, namelen)) {
			struct strbuf quoted = STRBUF_INIT;
			FUNC2(&quoted, namebuf, namelen);
			FUNC12(sb, quoted.buf, quoted.len,
							-6, 1, max_length);
			FUNC17(&quoted);
		} else {
			FUNC12(sb, namebuf, namelen,
						 -6, 1, max_length);
		}

		if (max_length <
		    FUNC5(sb) + FUNC20(" <") + maillen + FUNC20(">"))
			FUNC13(sb, '\n');
		FUNC14(sb, " <%.*s>\n", (int)maillen, mailbuf);
	} else {
		FUNC14(sb, "%s: %.*s%.*s <%.*s>\n", what,
			    (pp->fmt == CMIT_FMT_FULLER) ? 4 : 0, "    ",
			    (int)namelen, namebuf, (int)maillen, mailbuf);
	}

	switch (pp->fmt) {
	case CMIT_FMT_MEDIUM:
		FUNC14(sb, "Date:   %s\n",
			    FUNC9(&ident, &pp->date_mode));
		break;
	case CMIT_FMT_EMAIL:
	case CMIT_FMT_MBOXRD:
		FUNC14(sb, "Date: %s\n",
			    FUNC9(&ident, FUNC0(RFC2822)));
		break;
	case CMIT_FMT_FULLER:
		FUNC14(sb, "%sDate: %s\n", what,
			    FUNC9(&ident, &pp->date_mode));
		break;
	default:
		/* notin' */
		break;
	}
}