#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {int nr; TYPE_1__* items; } ;
struct pretty_print_context {TYPE_2__ in_body_headers; int /*<<< orphan*/  fmt; scalar_t__ after_subject; scalar_t__ rev; scalar_t__ print_email_subject; scalar_t__ preserve_subject; } ;
struct TYPE_3__ {scalar_t__ string; } ;

/* Variables and functions */
 int /*<<< orphan*/  RFC2047_SUBJECT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int /*<<< orphan*/ ,scalar_t__,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,scalar_t__) ; 
 char* FUNC3 (struct strbuf*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int const) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC17(struct pretty_print_context *pp,
		   const char **msg_p,
		   struct strbuf *sb,
		   const char *encoding,
		   int need_8bit_cte)
{
	static const int max_length = 78; /* per rfc2047 */
	struct strbuf title;

	FUNC14(&title, 80);
	*msg_p = FUNC3(&title, *msg_p,
				pp->preserve_subject ? "\n" : " ");

	FUNC13(sb, title.len + 1024);
	if (pp->print_email_subject) {
		if (pp->rev)
			FUNC2(sb, pp->rev);
		if (FUNC7(title.buf, title.len))
			FUNC0(sb, title.buf, title.len,
						encoding, RFC2047_SUBJECT);
		else
			FUNC8(sb, title.buf, title.len,
					 -FUNC6(sb), 1, max_length);
	} else {
		FUNC9(sb, &title);
	}
	FUNC10(sb, '\n');

	if (need_8bit_cte == 0) {
		int i;
		for (i = 0; i < pp->in_body_headers.nr; i++) {
			if (FUNC5(pp->in_body_headers.items[i].string)) {
				need_8bit_cte = 1;
				break;
			}
		}
	}

	if (need_8bit_cte > 0) {
		const char *header_fmt =
			"MIME-Version: 1.0\n"
			"Content-Type: text/plain; charset=%s\n"
			"Content-Transfer-Encoding: 8bit\n";
		FUNC11(sb, header_fmt, encoding);
	}
	if (pp->after_subject) {
		FUNC12(sb, pp->after_subject);
	}
	if (FUNC1(pp->fmt)) {
		FUNC10(sb, '\n');
	}

	if (pp->in_body_headers.nr) {
		int i;
		for (i = 0; i < pp->in_body_headers.nr; i++) {
			FUNC12(sb, pp->in_body_headers.items[i].string);
			FUNC4(pp->in_body_headers.items[i].string);
		}
		FUNC16(&pp->in_body_headers, 0);
		FUNC10(sb, '\n');
	}

	FUNC15(&title);
}