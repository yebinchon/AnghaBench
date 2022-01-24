#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int (* wrap ) (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ;int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_stream_registration ;
typedef  int /*<<< orphan*/  git_stream ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_SSL ; 
 int /*<<< orphan*/  GIT_STREAM_TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC6(git_stream **out, git_stream *in, const char *host)
{
	int (*wrap)(git_stream **, git_stream *, const char *) = NULL;
	git_stream_registration custom = {0};

	FUNC0(out && in);

	if (FUNC5(&custom, GIT_STREAM_TLS) == 0) {
		wrap = custom.wrap;
	} else {
#ifdef GIT_SECURE_TRANSPORT
		wrap = git_stransport_stream_wrap;
#elif defined(GIT_OPENSSL)
		wrap = git_openssl_stream_wrap;
#elif defined(GIT_MBEDTLS)
		wrap = git_mbedtls_stream_wrap;
#endif
	}

	if (!wrap) {
		FUNC1(GIT_ERROR_SSL, "there is no TLS stream available");
		return -1;
	}

	return wrap(out, in, host);
}