#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct emitted_diff_symbols {int dummy; } ;
struct emit_callback {TYPE_2__* diff_words; } ;
struct TYPE_10__ {void* color; } ;
struct TYPE_9__ {void* color; } ;
struct TYPE_8__ {void* color; } ;
struct diff_words_style {scalar_t__ type; TYPE_5__ ctx; TYPE_4__ new_word; TYPE_3__ old_word; } ;
struct diff_words_data {int dummy; } ;
struct diff_options {scalar_t__ word_diff; int /*<<< orphan*/  use_color; void* word_regex; TYPE_1__* repo; void* emitted_symbols; } ;
struct diff_filespec {int dummy; } ;
typedef  int /*<<< orphan*/  regex_t ;
struct TYPE_7__ {scalar_t__ type; struct diff_words_style* style; int /*<<< orphan*/ * word_regex; struct diff_options* opt; } ;
struct TYPE_6__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int FUNC0 (struct diff_words_style*) ; 
 int /*<<< orphan*/  DIFF_CONTEXT ; 
 int /*<<< orphan*/  DIFF_FILE_NEW ; 
 int /*<<< orphan*/  DIFF_FILE_OLD ; 
 int REG_EXTENDED ; 
 int REG_NEWLINE ; 
 int /*<<< orphan*/  FUNC1 (char*,void*) ; 
 void* FUNC2 (struct diff_options*,int /*<<< orphan*/ ) ; 
 void* diff_word_regex_cfg ; 
 struct diff_words_style* diff_words_styles ; 
 int /*<<< orphan*/  FUNC3 (struct diff_options*,struct diff_options*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,void*,int) ; 
 void* FUNC5 (struct diff_filespec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int,int) ; 
 struct diff_options* FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct emit_callback *ecbdata,
				 struct diff_options *orig_opts,
				 struct diff_filespec *one,
				 struct diff_filespec *two)
{
	int i;
	struct diff_options *o = FUNC8(sizeof(struct diff_options));
	FUNC3(o, orig_opts, sizeof(struct diff_options));

	ecbdata->diff_words =
		FUNC7(1, sizeof(struct diff_words_data));
	ecbdata->diff_words->type = o->word_diff;
	ecbdata->diff_words->opt = o;

	if (orig_opts->emitted_symbols)
		o->emitted_symbols =
			FUNC7(1, sizeof(struct emitted_diff_symbols));

	if (!o->word_regex)
		o->word_regex = FUNC5(one, o->repo->index);
	if (!o->word_regex)
		o->word_regex = FUNC5(two, o->repo->index);
	if (!o->word_regex)
		o->word_regex = diff_word_regex_cfg;
	if (o->word_regex) {
		ecbdata->diff_words->word_regex = (regex_t *)
			FUNC8(sizeof(regex_t));
		if (FUNC4(ecbdata->diff_words->word_regex,
			    o->word_regex,
			    REG_EXTENDED | REG_NEWLINE))
			FUNC1("invalid regular expression: %s",
			    o->word_regex);
	}
	for (i = 0; i < FUNC0(diff_words_styles); i++) {
		if (o->word_diff == diff_words_styles[i].type) {
			ecbdata->diff_words->style =
				&diff_words_styles[i];
			break;
		}
	}
	if (FUNC6(o->use_color)) {
		struct diff_words_style *st = ecbdata->diff_words->style;
		st->old_word.color = FUNC2(o, DIFF_FILE_OLD);
		st->new_word.color = FUNC2(o, DIFF_FILE_NEW);
		st->ctx.color = FUNC2(o, DIFF_CONTEXT);
	}
}