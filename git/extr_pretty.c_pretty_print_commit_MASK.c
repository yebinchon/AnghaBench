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
struct strbuf {unsigned long len; } ;
struct pretty_print_context {int need_8bit_cte; scalar_t__ fmt; int /*<<< orphan*/  print_email_subject; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 scalar_t__ CMIT_FMT_ONELINE ; 
 scalar_t__ CMIT_FMT_USERFORMAT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct commit const*,int /*<<< orphan*/ ,struct strbuf*,struct pretty_print_context*) ; 
 char* FUNC2 () ; 
 char* FUNC3 (struct commit const*,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct pretty_print_context*,char const*,struct commit const*,char const**,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct pretty_print_context*,char const**,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pretty_print_context*,char const**,struct strbuf*,char const*,int) ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct commit const*,char const*) ; 
 int /*<<< orphan*/  user_format ; 

void FUNC12(struct pretty_print_context *pp,
			 const struct commit *commit,
			 struct strbuf *sb)
{
	unsigned long beginning_of_body;
	int indent = 4;
	const char *msg;
	const char *reencoded;
	const char *encoding;
	int need_8bit_cte = pp->need_8bit_cte;

	if (pp->fmt == CMIT_FMT_USERFORMAT) {
		FUNC1(commit, user_format, sb, pp);
		return;
	}

	encoding = FUNC2();
	msg = reencoded = FUNC3(commit, NULL, encoding);

	if (pp->fmt == CMIT_FMT_ONELINE || FUNC0(pp->fmt))
		indent = 0;

	/*
	 * We need to check and emit Content-type: to mark it
	 * as 8-bit if we haven't done so.
	 */
	if (FUNC0(pp->fmt) && need_8bit_cte == 0) {
		int i, ch, in_body;

		for (in_body = i = 0; (ch = msg[i]); i++) {
			if (!in_body) {
				/* author could be non 7-bit ASCII but
				 * the log may be so; skip over the
				 * header part first.
				 */
				if (ch == '\n' && msg[i+1] == '\n')
					in_body = 1;
			}
			else if (FUNC4(ch)) {
				need_8bit_cte = 1;
				break;
			}
		}
	}

	FUNC5(pp, encoding, commit, &msg, sb);
	if (pp->fmt != CMIT_FMT_ONELINE && !pp->print_email_subject) {
		FUNC9(sb, '\n');
	}

	/* Skip excess blank lines at the beginning of body, if any... */
	msg = FUNC8(msg);

	/* These formats treat the title line specially. */
	if (pp->fmt == CMIT_FMT_ONELINE || FUNC0(pp->fmt))
		FUNC7(pp, &msg, sb, encoding, need_8bit_cte);

	beginning_of_body = sb->len;
	if (pp->fmt != CMIT_FMT_ONELINE)
		FUNC6(pp, &msg, sb, indent);
	FUNC10(sb);

	/* Make sure there is an EOLN for the non-oneline case */
	if (pp->fmt != CMIT_FMT_ONELINE)
		FUNC9(sb, '\n');

	/*
	 * The caller may append additional body text in e-mail
	 * format.  Make sure we did not strip the blank line
	 * between the header and the body.
	 */
	if (FUNC0(pp->fmt) && sb->len <= beginning_of_body)
		FUNC9(sb, '\n');

	FUNC11(commit, reencoded);
}