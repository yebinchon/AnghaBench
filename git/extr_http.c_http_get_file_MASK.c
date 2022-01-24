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
struct http_get_options {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int HTTP_ERROR ; 
 int HTTP_OK ; 
 int /*<<< orphan*/  HTTP_REQUEST_FILE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct http_get_options*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

__attribute__((used)) static int FUNC7(const char *url, const char *filename,
			 struct http_get_options *options)
{
	int ret;
	struct strbuf tmpfile = STRBUF_INIT;
	FILE *result;

	FUNC5(&tmpfile, "%s.temp", filename);
	result = FUNC3(tmpfile.buf, "a");
	if (!result) {
		FUNC0("Unable to open local file %s", tmpfile.buf);
		ret = HTTP_ERROR;
		goto cleanup;
	}

	ret = FUNC4(url, result, HTTP_REQUEST_FILE, options);
	FUNC1(result);

	if (ret == HTTP_OK && FUNC2(tmpfile.buf, filename))
		ret = HTTP_ERROR;
cleanup:
	FUNC6(&tmpfile);
	return ret;
}