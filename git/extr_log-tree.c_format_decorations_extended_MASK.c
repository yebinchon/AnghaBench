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
struct strbuf {int dummy; } ;
struct name_decoration {scalar_t__ type; struct name_decoration* next; } ;
struct commit {int /*<<< orphan*/  object; } ;

/* Variables and functions */
 scalar_t__ DECORATION_NONE ; 
 scalar_t__ DECORATION_REF_HEAD ; 
 scalar_t__ DECORATION_REF_TAG ; 
 int /*<<< orphan*/  DIFF_COMMIT ; 
 struct name_decoration* FUNC0 (struct name_decoration const*) ; 
 char const* FUNC1 (int,scalar_t__) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct name_decoration* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,struct name_decoration const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char const*) ; 

void FUNC6(struct strbuf *sb,
			const struct commit *commit,
			int use_color,
			const char *prefix,
			const char *separator,
			const char *suffix)
{
	const struct name_decoration *decoration;
	const struct name_decoration *current_and_HEAD;
	const char *color_commit =
		FUNC2(use_color, DIFF_COMMIT);
	const char *color_reset =
		FUNC1(use_color, DECORATION_NONE);

	decoration = FUNC3(&commit->object);
	if (!decoration)
		return;

	current_and_HEAD = FUNC0(decoration);
	while (decoration) {
		/*
		 * When both current and HEAD are there, only
		 * show HEAD->current where HEAD would have
		 * appeared, skipping the entry for current.
		 */
		if (decoration != current_and_HEAD) {
			FUNC5(sb, color_commit);
			FUNC5(sb, prefix);
			FUNC5(sb, color_reset);
			FUNC5(sb, FUNC1(use_color, decoration->type));
			if (decoration->type == DECORATION_REF_TAG)
				FUNC5(sb, "tag: ");

			FUNC4(sb, decoration);

			if (current_and_HEAD &&
			    decoration->type == DECORATION_REF_HEAD) {
				FUNC5(sb, " -> ");
				FUNC5(sb, color_reset);
				FUNC5(sb, FUNC1(use_color, current_and_HEAD->type));
				FUNC4(sb, current_and_HEAD);
			}
			FUNC5(sb, color_reset);

			prefix = separator;
		}
		decoration = decoration->next;
	}
	FUNC5(sb, color_commit);
	FUNC5(sb, suffix);
	FUNC5(sb, color_reset);
}