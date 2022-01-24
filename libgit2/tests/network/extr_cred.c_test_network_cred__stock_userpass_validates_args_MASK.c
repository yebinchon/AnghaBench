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
struct TYPE_3__ {char* username; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_cred_userpass_payload ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC2(void)
{
	git_cred_userpass_payload payload = {0};

	FUNC0(FUNC1(NULL, NULL, NULL, 0, NULL));

	payload.username = "user";
	FUNC0(FUNC1(NULL, NULL, NULL, 0, &payload));

	payload.username = NULL;
	payload.username = "pass";
	FUNC0(FUNC1(NULL, NULL, NULL, 0, &payload));
}