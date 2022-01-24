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

/* Variables and functions */
 int /*<<< orphan*/  TEST_HANDSHAKE_1RTT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int sc_callcnt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(int require_client_authentication)
{
    sc_callcnt = 0;

    FUNC2(FUNC1(NULL, 0), TEST_HANDSHAKE_1RTT, 0, 0, require_client_authentication);
    if (require_client_authentication) {
        FUNC0(sc_callcnt == 2);
    } else {
        FUNC0(sc_callcnt == 1);
    }

    FUNC2(FUNC1(NULL, 0), TEST_HANDSHAKE_1RTT, 0, 0, require_client_authentication);
    if (require_client_authentication) {
        FUNC0(sc_callcnt == 4);
    } else {
        FUNC0(sc_callcnt == 2);
    }

    FUNC2(FUNC1(NULL, 0), TEST_HANDSHAKE_1RTT, 0, 1, require_client_authentication);
    if (require_client_authentication) {
        FUNC0(sc_callcnt == 6);
    } else {
        FUNC0(sc_callcnt == 3);
    }
}