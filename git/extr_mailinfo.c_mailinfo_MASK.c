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
struct strbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct mailinfo {int input_error; int /*<<< orphan*/ * patchfile; TYPE_1__ log_message; void* p_hdr_data; int /*<<< orphan*/  input; void* s_hdr_data; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  MAX_HDR_PARSED ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct mailinfo*,struct strbuf*,void*,int) ; 
 int FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mailinfo*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct mailinfo*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ,int) ; 

int FUNC14(struct mailinfo *mi, const char *msg, const char *patch)
{
	FILE *cmitmsg;
	int peek;
	struct strbuf line = STRBUF_INIT;

	cmitmsg = FUNC4(msg, "w");
	if (!cmitmsg) {
		FUNC9(msg);
		return -1;
	}
	mi->patchfile = FUNC4(patch, "w");
	if (!mi->patchfile) {
		FUNC9(patch);
		FUNC2(cmitmsg);
		return -1;
	}

	mi->p_hdr_data = FUNC13(MAX_HDR_PARSED, sizeof(*(mi->p_hdr_data)));
	mi->s_hdr_data = FUNC13(MAX_HDR_PARSED, sizeof(*(mi->s_hdr_data)));

	do {
		peek = FUNC3(mi->input);
		if (peek == EOF) {
			FUNC2(cmitmsg);
			return FUNC1("empty patch: '%s'", patch);
		}
	} while (FUNC8(peek));
	FUNC12(peek, mi->input);

	/* process the email header */
	while (FUNC10(&line, mi->input))
		FUNC0(mi, &line, mi->p_hdr_data, 1);

	FUNC6(mi, &line);
	FUNC5(mi->log_message.buf, 1, mi->log_message.len, cmitmsg);
	FUNC2(cmitmsg);
	FUNC2(mi->patchfile);

	FUNC7(mi);
	FUNC11(&line);
	return mi->input_error;
}