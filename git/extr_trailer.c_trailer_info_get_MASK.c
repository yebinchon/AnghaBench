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
struct trailer_info {char const* trailer_start; char const* trailer_end; char** trailers; size_t trailer_nr; int /*<<< orphan*/  blank_line_before_trailer; } ;
struct strbuf {int /*<<< orphan*/ * buf; } ;
struct process_trailer_options {scalar_t__ no_divider; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,size_t,size_t) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int) ; 
 int FUNC6 (char const*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  separators ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char*,int,int) ; 
 char* FUNC10 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf**) ; 
 struct strbuf** FUNC12 (char const*,int,char,int /*<<< orphan*/ ) ; 
 int FUNC13 (char const*) ; 

void FUNC14(struct trailer_info *info, const char *str,
		      const struct process_trailer_options *opts)
{
	int patch_start, trailer_end, trailer_start;
	struct strbuf **trailer_lines, **ptr;
	char **trailer_strings = NULL;
	size_t nr = 0, alloc = 0;
	char **last = NULL;

	FUNC2();

	if (opts->no_divider)
		patch_start = FUNC13(str);
	else
		patch_start = FUNC3(str);

	trailer_end = FUNC5(str, patch_start);
	trailer_start = FUNC6(str, trailer_end);

	trailer_lines = FUNC12(str + trailer_start,
					 trailer_end - trailer_start,
					 '\n',
					 0);
	for (ptr = trailer_lines; *ptr; ptr++) {
		if (last && FUNC7((*ptr)->buf[0])) {
			struct strbuf sb = STRBUF_INIT;
			FUNC9(&sb, *last, FUNC13(*last), FUNC13(*last));
			FUNC8(&sb, *ptr);
			*last = FUNC10(&sb, NULL);
			continue;
		}
		FUNC0(trailer_strings, nr + 1, alloc);
		trailer_strings[nr] = FUNC10(*ptr, NULL);
		last = FUNC4(trailer_strings[nr], separators) >= 1
			? &trailer_strings[nr]
			: NULL;
		nr++;
	}
	FUNC11(trailer_lines);

	info->blank_line_before_trailer = FUNC1(str,
							       trailer_start);
	info->trailer_start = str + trailer_start;
	info->trailer_end = str + trailer_end;
	info->trailers = trailer_strings;
	info->trailer_nr = nr;
}