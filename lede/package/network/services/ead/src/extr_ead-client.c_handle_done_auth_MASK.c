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
struct ead_msg_auth {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 struct ead_msg_auth* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ead_msg_auth* auth ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  msg ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tc ; 

__attribute__((used)) static bool
FUNC3(void)
{
	struct ead_msg_auth *auth = FUNC0(msg, auth);
	if (FUNC2(tc, auth->data) != 0) {
		FUNC1(stderr, "Client auth verify failed\n");
		return false;
	}
	return true;
}