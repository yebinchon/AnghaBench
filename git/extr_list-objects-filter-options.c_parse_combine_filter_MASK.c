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
struct strbuf {int len; char* buf; } ;
struct list_objects_filter_options {int /*<<< orphan*/  choice; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOFC_COMBINE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct list_objects_filter_options*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_objects_filter_options*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct list_objects_filter_options*,struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf**) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,size_t,int) ; 
 struct strbuf** FUNC8 (char const*,char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(
	struct list_objects_filter_options *filter_options,
	const char *arg,
	struct strbuf *errbuf)
{
	struct strbuf **subspecs = FUNC8(arg, '+', 0);
	size_t sub;
	int result = 0;

	if (!subspecs[0]) {
		FUNC5(errbuf, FUNC0("expected something after combine:"));
		result = 1;
		goto cleanup;
	}

	for (sub = 0; subspecs[sub] && !result; sub++) {
		if (subspecs[sub + 1]) {
			/*
			 * This is not the last subspec. Remove trailing "+" so
			 * we can parse it.
			 */
			size_t last = subspecs[sub]->len - 1;
			FUNC1(subspecs[sub]->buf[last] == '+');
			FUNC7(subspecs[sub], last, 1);
		}
		result = FUNC4(
			filter_options, subspecs[sub], errbuf);
	}

	filter_options->choice = LOFC_COMBINE;

cleanup:
	FUNC6(subspecs);
	if (result) {
		FUNC2(filter_options);
		FUNC3(filter_options, 0, sizeof(*filter_options));
	}
	return result;
}