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
typedef  scalar_t__ uint64_t ;
struct option {int dummy; } ;

/* Variables and functions */
 struct option FUNC0 (char,char*,scalar_t__*,char*) ; 
 struct option FUNC1 () ; 
 struct option FUNC2 (char,char*,int*,char*) ; 
 int analyze ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int analyze_step ; 
 int count ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ dump ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int ignore_case ; 
 scalar_t__ multi ; 
 int FUNC6 (int,char const**,char const*,struct option*,char const**,int /*<<< orphan*/ ) ; 
 scalar_t__ perf ; 
 char* FUNC7 () ; 
 scalar_t__ single ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(int argc, const char **argv)
{
	const char *usage[] = {
		"test-tool lazy-init-name-hash -d (-s | -m)",
		"test-tool lazy-init-name-hash -p [-c c]",
		"test-tool lazy-init-name-hash -a a [--step s] [-c c]",
		"test-tool lazy-init-name-hash (-s | -m) [-c c]",
		"test-tool lazy-init-name-hash -s -m [-c c]",
		NULL
	};
	struct option options[] = {
		FUNC0('s', "single", &single, "run single-threaded code"),
		FUNC0('m', "multi", &multi, "run multi-threaded code"),
		FUNC2('c', "count", &count, "number of passes"),
		FUNC0('d', "dump", &dump, "dump hash tables"),
		FUNC0('p', "perf", &perf, "compare single vs multi"),
		FUNC2('a', "analyze", &analyze, "analyze different multi sizes"),
		FUNC2(0, "step", &analyze_step, "analyze step factor"),
		FUNC1(),
	};
	const char *prefix;
	uint64_t avg_single, avg_multi;

	prefix = FUNC7();

	argc = FUNC6(argc, argv, prefix, options, usage, 0);

	/*
	 * istate->dir_hash is only created when ignore_case is set.
	 */
	ignore_case = 1;

	if (dump) {
		if (perf || analyze > 0)
			FUNC4("cannot combine dump, perf, or analyze");
		if (count > 1)
			FUNC4("count not valid with dump");
		if (single && multi)
			FUNC4("cannot use both single and multi with dump");
		if (!single && !multi)
			FUNC4("dump requires either single or multi");
		FUNC5();
		return 0;
	}

	if (perf) {
		if (analyze > 0)
			FUNC4("cannot combine dump, perf, or analyze");
		if (single || multi)
			FUNC4("cannot use single or multi with perf");
		avg_single = FUNC8(0);
		avg_multi = FUNC8(1);
		if (avg_multi > avg_single)
			FUNC4("multi is slower");
		return 0;
	}

	if (analyze) {
		if (analyze < 500)
			FUNC4("analyze must be at least 500");
		if (!analyze_step)
			analyze_step = analyze;
		if (single || multi)
			FUNC4("cannot use single or multi with analyze");
		FUNC3();
		return 0;
	}

	if (!single && !multi)
		FUNC4("require either -s or -m or both");

	if (single)
		FUNC8(0);
	if (multi)
		FUNC8(1);

	return 0;
}