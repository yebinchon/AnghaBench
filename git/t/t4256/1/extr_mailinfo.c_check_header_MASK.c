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
struct strbuf {int len; scalar_t__ buf; } ;
struct mailinfo {int /*<<< orphan*/  message_id; scalar_t__ add_message_id; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (struct strbuf const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mailinfo*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mailinfo*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mailinfo*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf**,struct strbuf*) ; 
 char** header ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct mailinfo *mi,
			const struct strbuf *line,
			struct strbuf *hdr_data[], int overwrite)
{
	int i, ret = 0, len;
	struct strbuf sb = STRBUF_INIT;

	/* search for the interesting parts */
	for (i = 0; header[i]; i++) {
		int len = FUNC9(header[i]);
		if ((!hdr_data[i] || overwrite) && FUNC0(line, header[i])) {
			/* Unwrap inline B and Q encoding, and optionally
			 * normalize the meta information to utf8.
			 */
			FUNC5(&sb, line->buf + len + 2, line->len - len - 2);
			FUNC1(mi, &sb);
			FUNC4(&hdr_data[i], &sb);
			ret = 1;
			goto check_header_out;
		}
	}

	/* Content stuff */
	if (FUNC0(line, "Content-Type")) {
		len = FUNC9("Content-Type: ");
		FUNC5(&sb, line->buf + len, line->len - len);
		FUNC1(mi, &sb);
		FUNC7(&sb, 0, "Content-Type: ", len);
		FUNC3(mi, &sb);
		ret = 1;
		goto check_header_out;
	}
	if (FUNC0(line, "Content-Transfer-Encoding")) {
		len = FUNC9("Content-Transfer-Encoding: ");
		FUNC5(&sb, line->buf + len, line->len - len);
		FUNC1(mi, &sb);
		FUNC2(mi, &sb);
		ret = 1;
		goto check_header_out;
	}
	if (FUNC0(line, "Message-Id")) {
		len = FUNC9("Message-Id: ");
		FUNC5(&sb, line->buf + len, line->len - len);
		FUNC1(mi, &sb);
		if (mi->add_message_id)
			mi->message_id = FUNC6(&sb, NULL);
		ret = 1;
		goto check_header_out;
	}

check_header_out:
	FUNC8(&sb);
	return ret;
}