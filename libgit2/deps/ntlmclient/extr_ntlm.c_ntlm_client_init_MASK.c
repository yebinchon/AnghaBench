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
typedef  int /*<<< orphan*/  ntlm_client_flags ;
struct TYPE_7__ {int /*<<< orphan*/ * unicode_ctx; int /*<<< orphan*/ * hmac_ctx; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ ntlm_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*) ; 

ntlm_client *FUNC7(ntlm_client_flags flags)
{
	ntlm_client *ntlm = NULL;

	if ((ntlm = FUNC1(sizeof(ntlm_client))) == NULL)
		return NULL;

	FUNC2(ntlm, 0, sizeof(ntlm_client));

	ntlm->flags = flags;

	if ((ntlm->hmac_ctx = FUNC4()) == NULL ||
		(ntlm->unicode_ctx = FUNC6(ntlm)) == NULL) {
		FUNC3(ntlm->hmac_ctx);
		FUNC5(ntlm->unicode_ctx);
		FUNC0(ntlm);
		return NULL;
	}

	return ntlm;
}