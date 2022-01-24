#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  quicly_conn_t ;
typedef  int /*<<< orphan*/  ptls_t ;
typedef  int /*<<< orphan*/  ptls_save_ticket_t ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ ptls_iovec_t ;
struct TYPE_7__ {int /*<<< orphan*/  base; } ;
struct TYPE_6__ {TYPE_4__ tls_ticket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__ session_info ; 

int FUNC7(ptls_save_ticket_t *_self, ptls_t *tls, ptls_iovec_t src)
{
    FUNC0(session_info.tls_ticket.base);
    session_info.tls_ticket = FUNC4(FUNC1(src.len), src.len);
    FUNC2(session_info.tls_ticket.base, src.base, src.len);

    quicly_conn_t *conn = *FUNC3(tls);
    return FUNC6(FUNC5(conn));
}