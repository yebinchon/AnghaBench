#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  version; } ;
struct TYPE_7__ {TYPE_1__ super; } ;
typedef  TYPE_2__ quicly_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VERSION_SWITCH ; 
 int FUNC1 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(quicly_conn_t *conn, uint32_t version)
{
    /* set selected version */
    conn->super.version = version;
    FUNC0(VERSION_SWITCH, conn, FUNC2(), version);

    /* reschedule all the packets that have been sent for immediate resend */
    return FUNC1(conn, ~0u);
}