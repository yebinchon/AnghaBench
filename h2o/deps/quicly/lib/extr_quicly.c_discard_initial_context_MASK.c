#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  initial; } ;
typedef  TYPE_1__ quicly_conn_t ;

/* Variables and functions */
 unsigned int QUICLY_EPOCH_INITIAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned int) ; 
 int FUNC1 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(quicly_conn_t *conn)
{
    int ret;

    if ((ret = FUNC1(conn, 1u << QUICLY_EPOCH_INITIAL)) != 0)
        return ret;
    FUNC0(conn, QUICLY_EPOCH_INITIAL);
    FUNC2(&conn->initial);

    return 0;
}