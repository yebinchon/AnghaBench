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
struct serve_options {int /*<<< orphan*/  advertise_capabilities; int /*<<< orphan*/  stateless_rpc; } ;
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 int PARSE_OPT_KEEP_DASHDASH ; 
 int PARSE_OPT_KEEP_UNKNOWN ; 
 struct serve_options SERVE_OPTIONS_INIT ; 
 int FUNC3 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct serve_options*) ; 
 int /*<<< orphan*/  serve_usage ; 
 char* FUNC5 () ; 

int FUNC6(int argc, const char **argv)
{
	struct serve_options opts = SERVE_OPTIONS_INIT;

	struct option options[] = {
		FUNC1(0, "stateless-rpc", &opts.stateless_rpc,
			 FUNC0("quit after a single request/response exchange")),
		FUNC1(0, "advertise-capabilities", &opts.advertise_capabilities,
			 FUNC0("exit immediately after advertising capabilities")),
		FUNC2()
	};
	const char *prefix = FUNC5();

	/* ignore all unknown cmdline switches for now */
	argc = FUNC3(argc, argv, prefix, options, serve_usage,
			     PARSE_OPT_KEEP_DASHDASH |
			     PARSE_OPT_KEEP_UNKNOWN);
	FUNC4(&opts);

	return 0;
}