#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * userdomain; int /*<<< orphan*/  unicode_ctx; int /*<<< orphan*/  userdomain_utf16_len; int /*<<< orphan*/  userdomain_utf16; int /*<<< orphan*/ * username_upper; int /*<<< orphan*/  username_upper_utf16_len; int /*<<< orphan*/  username_upper_utf16; int /*<<< orphan*/ * username; int /*<<< orphan*/  username_utf16_len; int /*<<< orphan*/  username_utf16; int /*<<< orphan*/ * password; } ;
typedef  TYPE_1__ ntlm_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(
	ntlm_client *ntlm,
	const char *username,
	const char *domain,
	const char *password)
{
	FUNC0(ntlm);

	FUNC1(ntlm);

	if ((username && (ntlm->username = FUNC4(username)) == NULL) ||
		(domain && (ntlm->userdomain = FUNC4(domain)) == NULL) ||
		(password && (ntlm->password = FUNC4(password)) == NULL)) {
		FUNC2(ntlm, "out of memory");
		return -1;
	}

	if (username && FUNC6(ntlm)) {
		if ((ntlm->username_upper = FUNC4(username)) == NULL) {
			FUNC2(ntlm, "out of memory");
			return -1;
		}
		FUNC7(ntlm->username_upper);

		if (!FUNC3(
				&ntlm->username_utf16,
				&ntlm->username_utf16_len,
				ntlm->unicode_ctx,
				ntlm->username,
				FUNC5(ntlm->username)))
			return -1;

		if (!FUNC3(
				&ntlm->username_upper_utf16,
				&ntlm->username_upper_utf16_len,
				ntlm->unicode_ctx,
				ntlm->username_upper,
				FUNC5(ntlm->username_upper)))
			return -1;
	}

	if (domain && FUNC6(ntlm) && !FUNC3(
			&ntlm->userdomain_utf16,
			&ntlm->userdomain_utf16_len,
			ntlm->unicode_ctx,
			ntlm->userdomain,
			FUNC5(ntlm->userdomain)))
		return -1;

	return 0;
}