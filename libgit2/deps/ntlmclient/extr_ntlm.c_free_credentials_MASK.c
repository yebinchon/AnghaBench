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
struct TYPE_3__ {int /*<<< orphan*/ * password_utf16; int /*<<< orphan*/ * userdomain_utf16; int /*<<< orphan*/ * username_upper_utf16; int /*<<< orphan*/ * username_utf16; int /*<<< orphan*/ * password; int /*<<< orphan*/ * userdomain; int /*<<< orphan*/ * username_upper; int /*<<< orphan*/ * username; int /*<<< orphan*/  password_utf16_len; } ;
typedef  TYPE_1__ ntlm_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(ntlm_client *ntlm)
{
	if (ntlm->password)
		FUNC1(ntlm->password, FUNC2(ntlm->password));

	if (ntlm->password_utf16)
		FUNC1(ntlm->password_utf16, ntlm->password_utf16_len);

	FUNC0(ntlm->username);
	FUNC0(ntlm->username_upper);
	FUNC0(ntlm->userdomain);
	FUNC0(ntlm->password);

	FUNC0(ntlm->username_utf16);
	FUNC0(ntlm->username_upper_utf16);
	FUNC0(ntlm->userdomain_utf16);
	FUNC0(ntlm->password_utf16);

	ntlm->username = NULL;
	ntlm->username_upper = NULL;
	ntlm->userdomain = NULL;
	ntlm->password = NULL;

	ntlm->username_utf16 = NULL;
	ntlm->username_upper_utf16 = NULL;
	ntlm->userdomain_utf16 = NULL;
	ntlm->password_utf16 = NULL;
}