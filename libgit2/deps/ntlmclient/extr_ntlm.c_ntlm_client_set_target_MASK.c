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
struct TYPE_6__ {int /*<<< orphan*/ * target; int /*<<< orphan*/  unicode_ctx; int /*<<< orphan*/  target_utf16_len; int /*<<< orphan*/ * target_utf16; } ;
typedef  TYPE_1__ ntlm_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

int FUNC7(ntlm_client *ntlm, const char *target)
{
	FUNC0(ntlm);

	FUNC1(ntlm->target);
	FUNC1(ntlm->target_utf16);

	ntlm->target = NULL;
	ntlm->target_utf16 = NULL;

	if (target) {
		if ((ntlm->target = FUNC4(target)) == NULL) {
			FUNC2(ntlm, "out of memory");
			return -1;
		}

		if (FUNC6(ntlm) && !FUNC3(
				&ntlm->target_utf16,
				&ntlm->target_utf16_len,
				ntlm->unicode_ctx,
				ntlm->target,
				FUNC5(ntlm->target)))
			return -1;
	}

	return 0;
}