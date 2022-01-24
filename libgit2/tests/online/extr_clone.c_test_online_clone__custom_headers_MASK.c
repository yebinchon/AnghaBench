#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int count; char** strings; } ;
struct TYPE_6__ {TYPE_1__ custom_headers; } ;
struct TYPE_7__ {TYPE_2__ fetch_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIVE_REPO_URL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__ g_options ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 

void FUNC3(void)
{
	char *empty_header = "";
	char *unnamed_header = "this is a header about nothing";
	char *newlines = "X-Custom: almost OK\n";
	char *conflict = "Accept: defined-by-git";
	char *ok = "X-Custom: this should be ok";

	g_options.fetch_opts.custom_headers.count = 1;

	g_options.fetch_opts.custom_headers.strings = &empty_header;
	FUNC0(FUNC2(&g_repo, LIVE_REPO_URL, "./foo", &g_options));

	g_options.fetch_opts.custom_headers.strings = &unnamed_header;
	FUNC0(FUNC2(&g_repo, LIVE_REPO_URL, "./foo", &g_options));

	g_options.fetch_opts.custom_headers.strings = &newlines;
	FUNC0(FUNC2(&g_repo, LIVE_REPO_URL, "./foo", &g_options));

	g_options.fetch_opts.custom_headers.strings = &conflict;
	FUNC0(FUNC2(&g_repo, LIVE_REPO_URL, "./foo", &g_options));

	/* Finally, we got it right! */
	g_options.fetch_opts.custom_headers.strings = &ok;
	FUNC1(FUNC2(&g_repo, LIVE_REPO_URL, "./foo", &g_options));
}