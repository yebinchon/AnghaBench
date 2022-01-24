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
struct url_info {scalar_t__ url_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*,struct url_info*) ; 

int FUNC4(int argc, const char **argv)
{
	const char usage[] = "test-tool urlmatch-normalization [-p | -l] <url1> | <url1> <url2>";
	char *url1, *url2;
	int opt_p = 0, opt_l = 0;

	/*
	 * For one url, succeed if url_normalize succeeds on it, fail otherwise.
	 * For two urls, succeed only if url_normalize succeeds on both and
	 * the results compare equal with strcmp.  If -p is given (one url only)
	 * and url_normalize succeeds, print the result followed by "\n".  If
	 * -l is given (one url only) and url_normalize succeeds, print the
	 * returned length in decimal followed by "\n".
	 */

	if (argc > 1 && !FUNC2(argv[1], "-p")) {
		opt_p = 1;
		argc--;
		argv++;
	} else if (argc > 1 && !FUNC2(argv[1], "-l")) {
		opt_l = 1;
		argc--;
		argv++;
	}

	if (argc < 2 || argc > 3)
		FUNC0("%s", usage);

	if (argc == 2) {
		struct url_info info;
		url1 = FUNC3(argv[1], &info);
		if (!url1)
			return 1;
		if (opt_p)
			FUNC1("%s\n", url1);
		if (opt_l)
			FUNC1("%u\n", (unsigned)info.url_len);
		return 0;
	}

	if (opt_p || opt_l)
		FUNC0("%s", usage);

	url1 = FUNC3(argv[1], NULL);
	url2 = FUNC3(argv[2], NULL);
	return (url1 && url2 && !FUNC2(url1, url2)) ? 0 : 1;
}