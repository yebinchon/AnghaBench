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
typedef  int /*<<< orphan*/  git_subtransport ;
typedef  int /*<<< orphan*/  git_smart_subtransport_stream ;
typedef  int /*<<< orphan*/  git_smart_subtransport ;
typedef  int git_smart_service_t ;

/* Variables and functions */
#define  GIT_SERVICE_RECEIVEPACK 131 
#define  GIT_SERVICE_RECEIVEPACK_LS 130 
#define  GIT_SERVICE_UPLOADPACK 129 
#define  GIT_SERVICE_UPLOADPACK_LS 128 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC4(
	git_smart_subtransport_stream **stream,
	git_smart_subtransport *subtransport,
	const char *url,
	git_smart_service_t action)
{
	git_subtransport *t = (git_subtransport *) subtransport;

	switch (action) {
		case GIT_SERVICE_UPLOADPACK_LS:
			return FUNC3(t, url, stream);

		case GIT_SERVICE_UPLOADPACK:
			return FUNC2(t, url, stream);

		case GIT_SERVICE_RECEIVEPACK_LS:
			return FUNC1(t, url, stream);

		case GIT_SERVICE_RECEIVEPACK:
			return FUNC0(t, url, stream);
	}

	*stream = NULL;
	return -1;
}