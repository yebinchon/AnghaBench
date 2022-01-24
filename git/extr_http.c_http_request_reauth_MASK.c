#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct http_get_options {TYPE_2__* effective_url; TYPE_1__* base_url; } ;
struct TYPE_4__ {char* buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int HTTP_OK ; 
 int HTTP_REAUTH ; 
#define  HTTP_REQUEST_FILE 129 
#define  HTTP_REQUEST_STRBUF 128 
 int HTTP_START_FAILED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  http_auth ; 
 int FUNC7 (char const*,void*,int,struct http_get_options*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,char const*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC11(const char *url,
			       void *result, int target,
			       struct http_get_options *options)
{
	int ret = FUNC7(url, result, target, options);

	if (ret != HTTP_OK && ret != HTTP_REAUTH)
		return ret;

	if (options && options->effective_url && options->base_url) {
		if (FUNC10(options->base_url,
					     url, options->effective_url)) {
			FUNC2(&http_auth, options->base_url->buf);
			url = options->effective_url->buf;
		}
	}

	if (ret != HTTP_REAUTH)
		return ret;

	/*
	 * The previous request may have put cruft into our output stream; we
	 * should clear it out before making our next request.
	 */
	switch (target) {
	case HTTP_REQUEST_STRBUF:
		FUNC9(result);
		break;
	case HTTP_REQUEST_FILE:
		if (FUNC4(result)) {
			FUNC3("unable to flush a file");
			return HTTP_START_FAILED;
		}
		FUNC8(result);
		if (FUNC6(FUNC5(result), 0) < 0) {
			FUNC3("unable to truncate a file");
			return HTTP_START_FAILED;
		}
		break;
	default:
		FUNC0("Unknown http_request target");
	}

	FUNC1(&http_auth);

	return FUNC7(url, result, target, options);
}