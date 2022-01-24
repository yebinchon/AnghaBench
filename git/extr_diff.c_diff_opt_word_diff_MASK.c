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
struct option {struct diff_options* value; } ;
struct diff_options {scalar_t__ word_diff; int use_color; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DIFF_WORDS_COLOR ; 
 scalar_t__ DIFF_WORDS_NONE ; 
 void* DIFF_WORDS_PLAIN ; 
 scalar_t__ DIFF_WORDS_PORCELAIN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(const struct option *opt,
			      const char *arg, int unset)
{
	struct diff_options *options = opt->value;

	FUNC0(unset);
	if (arg) {
		if (!FUNC3(arg, "plain"))
			options->word_diff = DIFF_WORDS_PLAIN;
		else if (!FUNC3(arg, "color")) {
			options->use_color = 1;
			options->word_diff = DIFF_WORDS_COLOR;
		}
		else if (!FUNC3(arg, "porcelain"))
			options->word_diff = DIFF_WORDS_PORCELAIN;
		else if (!FUNC3(arg, "none"))
			options->word_diff = DIFF_WORDS_NONE;
		else
			return FUNC2(FUNC1("bad --word-diff argument: %s"), arg);
	} else {
		if (options->word_diff == DIFF_WORDS_NONE)
			options->word_diff = DIFF_WORDS_PLAIN;
	}
	return 0;
}