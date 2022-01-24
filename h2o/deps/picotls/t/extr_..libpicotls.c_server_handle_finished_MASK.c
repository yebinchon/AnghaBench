#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  pending_traffic_secret; } ;
struct TYPE_11__ {int /*<<< orphan*/  secret; } ;
struct TYPE_12__ {TYPE_1__ dec; } ;
struct TYPE_14__ {int /*<<< orphan*/  state; int /*<<< orphan*/  key_schedule; TYPE_3__ server; TYPE_2__ traffic_protection; } ;
typedef  TYPE_4__ ptls_t ;
struct TYPE_15__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_5__ ptls_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTLS_STATE_SERVER_POST_HANDSHAKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*,TYPE_5__) ; 

__attribute__((used)) static int FUNC5(ptls_t *tls, ptls_iovec_t message)
{
    int ret;

    if ((ret = FUNC4(tls, message)) != 0)
        return ret;

    FUNC0(tls->traffic_protection.dec.secret, tls->server.pending_traffic_secret, sizeof(tls->server.pending_traffic_secret));
    FUNC2(tls->server.pending_traffic_secret, sizeof(tls->server.pending_traffic_secret));
    if ((ret = FUNC3(tls, 0, NULL, 3, 0)) != 0)
        return ret;

    FUNC1(tls->key_schedule, message.base, message.len);

    tls->state = PTLS_STATE_SERVER_POST_HANDSHAKE;
    return 0;
}