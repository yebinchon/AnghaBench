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
struct emit_callback {char** label_path; int /*<<< orphan*/  lno_in_preimage; int /*<<< orphan*/  lno_in_postimage; TYPE_1__* diff_words; TYPE_2__* header; struct diff_options* opt; } ;
struct diff_options {int found_changes; } ;
typedef  enum diff_symbol { ____Placeholder_diff_symbol } diff_symbol ;
struct TYPE_4__ {char* buf; unsigned long len; } ;
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  plus; int /*<<< orphan*/  minus; } ;

/* Variables and functions */
 int DIFF_SYMBOL_CONTEXT_INCOMPLETE ; 
 int DIFF_SYMBOL_FILEPAIR_MINUS ; 
 int DIFF_SYMBOL_FILEPAIR_PLUS ; 
 int DIFF_SYMBOL_HEADER ; 
 int DIFF_SYMBOL_WORDS ; 
 int DIFF_SYMBOL_WORDS_PORCELAIN ; 
 scalar_t__ DIFF_WORDS_PORCELAIN ; 
 scalar_t__ diff_suppress_blank_empty ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct emit_callback*) ; 
 int /*<<< orphan*/  FUNC2 (struct emit_callback*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct emit_callback*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct emit_callback*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct diff_options*,int,char*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct emit_callback*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct emit_callback*) ; 
 unsigned long FUNC8 (char*,unsigned long) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 unsigned long FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void *priv, char *line, unsigned long len)
{
	struct emit_callback *ecbdata = priv;
	struct diff_options *o = ecbdata->opt;

	o->found_changes = 1;

	if (ecbdata->header) {
		FUNC5(o, DIFF_SYMBOL_HEADER,
				 ecbdata->header->buf, ecbdata->header->len, 0);
		FUNC10(ecbdata->header);
		ecbdata->header = NULL;
	}

	if (ecbdata->label_path[0]) {
		FUNC5(o, DIFF_SYMBOL_FILEPAIR_MINUS,
				 ecbdata->label_path[0],
				 FUNC11(ecbdata->label_path[0]), 0);
		FUNC5(o, DIFF_SYMBOL_FILEPAIR_PLUS,
				 ecbdata->label_path[1],
				 FUNC11(ecbdata->label_path[1]), 0);
		ecbdata->label_path[0] = ecbdata->label_path[1] = NULL;
	}

	if (diff_suppress_blank_empty
	    && len == 2 && line[0] == ' ' && line[1] == '\n') {
		line[0] = '\n';
		len = 1;
	}

	if (line[0] == '@') {
		if (ecbdata->diff_words)
			FUNC1(ecbdata);
		len = FUNC8(line, len);
		FUNC7(line, ecbdata);
		FUNC6(ecbdata, line, len);
		return;
	}

	if (ecbdata->diff_words) {
		enum diff_symbol s =
			ecbdata->diff_words->type == DIFF_WORDS_PORCELAIN ?
			DIFF_SYMBOL_WORDS_PORCELAIN : DIFF_SYMBOL_WORDS;
		if (line[0] == '-') {
			FUNC0(line, len,
					  &ecbdata->diff_words->minus);
			return;
		} else if (line[0] == '+') {
			FUNC0(line, len,
					  &ecbdata->diff_words->plus);
			return;
		} else if (FUNC9(line, "\\ ")) {
			/*
			 * Eat the "no newline at eof" marker as if we
			 * saw a "+" or "-" line with nothing on it,
			 * and return without diff_words_flush() to
			 * defer processing. If this is the end of
			 * preimage, more "+" lines may come after it.
			 */
			return;
		}
		FUNC1(ecbdata);
		FUNC5(o, s, line, len, 0);
		return;
	}

	switch (line[0]) {
	case '+':
		ecbdata->lno_in_postimage++;
		FUNC2(ecbdata, line + 1, len - 1);
		break;
	case '-':
		ecbdata->lno_in_preimage++;
		FUNC4(ecbdata, line + 1, len - 1);
		break;
	case ' ':
		ecbdata->lno_in_postimage++;
		ecbdata->lno_in_preimage++;
		FUNC3(ecbdata, line + 1, len - 1);
		break;
	default:
		/* incomplete line at the end */
		ecbdata->lno_in_preimage++;
		FUNC5(o, DIFF_SYMBOL_CONTEXT_INCOMPLETE,
				 line, len, 0);
		break;
	}
}