#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  unicode_ctx; int /*<<< orphan*/  hostname_utf16_len; int /*<<< orphan*/ * hostname_utf16; int /*<<< orphan*/ * hostdomain; int /*<<< orphan*/ * hostname; } ;
typedef  TYPE_1__ ntlm_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

int FUNC7(
	ntlm_client *ntlm,
	const char *hostname,
	const char *domain)
{
	FUNC0(ntlm);

	FUNC1(ntlm->hostname);
	FUNC1(ntlm->hostdomain);
	FUNC1(ntlm->hostname_utf16);

	ntlm->hostname = NULL;
	ntlm->hostdomain = NULL;
	ntlm->hostname_utf16 = NULL;

	if (hostname && (ntlm->hostname = FUNC4(hostname)) == NULL) {
		FUNC2(ntlm, "out of memory");
		return -1;
	}

	if (domain && (ntlm->hostdomain = FUNC4(domain)) == NULL) {
		FUNC2(ntlm, "out of memory");
		return -1;
	}

	if (hostname && FUNC6(ntlm) && !FUNC3(
			&ntlm->hostname_utf16,
			&ntlm->hostname_utf16_len,
			ntlm->unicode_ctx,
			hostname,
			FUNC5(hostname)))
		return -1;

	return 0;
}