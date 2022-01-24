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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct list_objects_filter_options {int sub_nr; struct list_objects_filter_options* sub; int /*<<< orphan*/  sub_alloc; int /*<<< orphan*/  filter_spec; int /*<<< orphan*/  choice; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_objects_filter_options*,int,int,int /*<<< orphan*/ ) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct list_objects_filter_options*,char const*) ; 
 int FUNC3 (struct list_objects_filter_options*,char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct list_objects_filter_options*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

void FUNC7(
	struct list_objects_filter_options *filter_options,
	const char *arg)
{
	struct strbuf errbuf = STRBUF_INIT;
	int parse_error;

	if (!filter_options->choice) {
		FUNC4(&filter_options->filter_spec, FUNC6(arg));

		parse_error = FUNC3(
			filter_options, arg, &errbuf);
	} else {
		/*
		 * Make filter_options an LOFC_COMBINE spec so we can trivially
		 * add subspecs to it.
		 */
		FUNC5(filter_options);

		FUNC4(&filter_options->filter_spec, FUNC6("+"));
		FUNC2(filter_options, arg);
		FUNC0(filter_options->sub, filter_options->sub_nr, 1,
			      filter_options->sub_alloc);

		parse_error = FUNC3(
			&filter_options->sub[filter_options->sub_nr - 1], arg,
			&errbuf);
	}
	if (parse_error)
		FUNC1("%s", errbuf.buf);
}