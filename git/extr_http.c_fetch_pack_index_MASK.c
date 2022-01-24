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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ HTTP_OK ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (unsigned char*) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ http_is_verbose ; 
 char* FUNC7 (unsigned char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char*,char*) ; 
 char* FUNC9 (struct strbuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC10(unsigned char *hash, const char *base_url)
{
	char *url, *tmp;
	struct strbuf buf = STRBUF_INIT;

	if (http_is_verbose)
		FUNC3(stderr, "Getting index for pack %s\n", FUNC5(hash));

	FUNC1(&buf, base_url);
	FUNC8(&buf, "objects/pack/pack-%s.idx", FUNC5(hash));
	url = FUNC9(&buf, NULL);

	FUNC8(&buf, "%s.temp", FUNC7(hash));
	tmp = FUNC9(&buf, NULL);

	if (FUNC6(url, tmp, NULL) != HTTP_OK) {
		FUNC2("Unable to get pack index %s", url);
		FUNC0(tmp);
	}

	FUNC4(url);
	return tmp;
}