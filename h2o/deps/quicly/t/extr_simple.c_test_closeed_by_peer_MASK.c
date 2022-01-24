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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;
typedef  int /*<<< orphan*/  quicly_closed_by_peer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ UINT64_MAX ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  test_close_error_code ; 

__attribute__((used)) static void FUNC4(quicly_closed_by_peer_t *self, quicly_conn_t *conn, int err, uint64_t frame_type,
                                 const char *reason, size_t reason_len)
{
    FUNC3(FUNC1(err));
    test_close_error_code = FUNC0(err);
    FUNC3(frame_type == UINT64_MAX);
    FUNC3(reason_len == 8);
    FUNC3(FUNC2(reason, "good bye", 8) == 0);
}