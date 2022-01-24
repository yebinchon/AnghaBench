#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {size_t suggested_write_size; } ;
struct TYPE_9__ {TYPE_1__ _latency_optimization; } ;
typedef  TYPE_2__ h2o_socket_t ;
typedef  int /*<<< orphan*/  h2o_socket_latency_optimization_conditions_t ;

/* Variables and functions */
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  adjust_notsent_lowat ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

size_t FUNC6(h2o_socket_t *sock,
                                                         const h2o_socket_latency_optimization_conditions_t *conditions)
{
    uint32_t rtt = 0, mss = 0, cwnd_size = 0, cwnd_avail = 0;
    uint64_t loop_time = UINT64_MAX;
    int can_prepare = 1;

#if !defined(TCP_NOTSENT_LOWAT)
    /* the feature cannot be setup unless TCP_NOTSENT_LOWAT is available */
    can_prepare = 0;
#endif

#if H2O_USE_LIBUV
    /* poll-then-write is impossible with libuv */
    can_prepare = 0;
#else
    if (can_prepare)
        loop_time = FUNC1(FUNC3(sock));
#endif

    /* obtain TCP states */
    if (can_prepare && FUNC4(FUNC2(sock), &rtt, &mss, &cwnd_size, &cwnd_avail) != 0)
        can_prepare = 0;

    /* determine suggested_write_size, suggested_tls_record_size and adjust TCP_NOTSENT_LOWAT based on the obtained information */
    if (can_prepare) {
        FUNC5(sock, conditions, rtt, mss, cwnd_size, cwnd_avail, loop_time, adjust_notsent_lowat);
    } else {
        FUNC0(sock, adjust_notsent_lowat);
    }

    return sock->_latency_optimization.suggested_write_size;

#undef CALC_CWND_PAIR_FROM_BYTE_UNITS
}