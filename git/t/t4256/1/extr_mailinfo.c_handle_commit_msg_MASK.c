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
struct strbuf {int len; char* buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct mailinfo {int header_stage; int /*<<< orphan*/  log_message; scalar_t__ message_id; int /*<<< orphan*/ ** s_hdr_data; scalar_t__ use_scissors; TYPE_2__ charset; scalar_t__ use_inbody_headers; TYPE_1__ inbody_header_accum; int /*<<< orphan*/  filter_stage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mailinfo*,struct strbuf*) ; 
 scalar_t__ FUNC2 (struct mailinfo*,struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mailinfo*) ; 
 scalar_t__* header ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct mailinfo *mi, struct strbuf *line)
{
	FUNC0(!mi->filter_stage);

	if (mi->header_stage) {
		if (!line->len || (line->len == 1 && line->buf[0] == '\n')) {
			if (mi->inbody_header_accum.len) {
				FUNC3(mi);
				mi->header_stage = 0;
			}
			return 0;
		}
	}

	if (mi->use_inbody_headers && mi->header_stage) {
		mi->header_stage = FUNC1(mi, line);
		if (mi->header_stage)
			return 0;
	} else
		/* Only trim the first (blank) line of the commit message
		 * when ignoring in-body headers.
		 */
		mi->header_stage = 0;

	/* normalize the log message to UTF-8. */
	if (FUNC2(mi, line, mi->charset.buf))
		return 0; /* mi->input_error already set */

	if (mi->use_scissors && FUNC4(line->buf)) {
		int i;

		FUNC9(&mi->log_message, 0);
		mi->header_stage = 1;

		/*
		 * We may have already read "secondary headers"; purge
		 * them to give ourselves a clean restart.
		 */
		for (i = 0; header[i]; i++) {
			if (mi->s_hdr_data[i])
				FUNC8(mi->s_hdr_data[i]);
			mi->s_hdr_data[i] = NULL;
		}
		return 0;
	}

	if (FUNC5(line)) {
		if (mi->message_id)
			FUNC7(&mi->log_message,
				    "Message-Id: %s\n", mi->message_id);
		return 1;
	}

	FUNC6(&mi->log_message, line);
	return 0;
}