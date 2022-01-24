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
typedef  int /*<<< orphan*/  php_immediate_stats_t ;

/* Variables and functions */
 int QSIZE ; 
 int RPC_PHP_IMMEDIATE_STATS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  immediate_stats ; 
 int master_pipe_fast_write ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  pipe_fast_packet_id ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC5 (int,int*,size_t) ; 

void FUNC6() {
  if (master_pipe_fast_write != -1) {
#define QSIZE (sizeof (php_immediate_stats_t) + 1 + sizeof (int) * 5 + 3) & -4
    int q[QSIZE];
    int qsize = QSIZE;
#undef QSIZE
    FUNC3 (q, 0, (size_t)qsize);

    q[2] = RPC_PHP_IMMEDIATE_STATS;
    FUNC2 (q + 3, &immediate_stats, sizeof (php_immediate_stats_t));

    FUNC4 (pipe_fast_packet_id++, q, qsize);
    int err = (int)FUNC5 (master_pipe_fast_write, q, (size_t)qsize);
    FUNC0 (err == qsize, FUNC1 ("error [%d] during write to pipe", errno));
  }
}