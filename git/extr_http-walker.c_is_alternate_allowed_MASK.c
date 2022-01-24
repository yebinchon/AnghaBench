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

/* Variables and functions */
 int FUNC0 (char const**) ; 
 scalar_t__ HTTP_FOLLOW_ALWAYS ; 
 scalar_t__ http_follow_config ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char const*,char const**) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static int FUNC5(const char *url)
{
	const char *protocols[] = {
		"http", "https", "ftp", "ftps"
	};
	int i;

	if (http_follow_config != HTTP_FOLLOW_ALWAYS) {
		FUNC4("alternate disabled by http.followRedirects: %s", url);
		return 0;
	}

	for (i = 0; i < FUNC0(protocols); i++) {
		const char *end;
		if (FUNC2(url, protocols[i], &end) &&
		    FUNC3(end, "://"))
			break;
	}

	if (i >= FUNC0(protocols)) {
		FUNC4("ignoring alternate with unknown protocol: %s", url);
		return 0;
	}
	if (!FUNC1(protocols[i], 0)) {
		FUNC4("ignoring alternate with restricted protocol: %s", url);
		return 0;
	}

	return 1;
}