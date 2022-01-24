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
 int RPC_PHP_FULL_STATS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int* FUNC5 (size_t) ; 
 int master_pipe_write ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  pipe_packet_id ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  stats ; 
 int stats_len ; 
 scalar_t__ FUNC10 (int,int*,size_t) ; 

void FUNC11() {
  if (master_pipe_write != -1) {
    FUNC8();

    int qsize = stats_len + 1 + (int)sizeof (int) * 5;
    qsize = (qsize + 3) & -4;
    int *q = FUNC5 ((size_t)qsize);
    FUNC7 (q, 0, (size_t)qsize);

    q[2] = RPC_PHP_FULL_STATS;
    FUNC6 (q + 3, stats, (size_t)stats_len);

    FUNC9 (pipe_packet_id++, q, qsize);
    int err = (int)FUNC10 (master_pipe_write, q, (size_t)qsize);
    FUNC0 (err == qsize, FUNC1 ("error during write to pipe [%d]\n", master_pipe_write));
    if (err != qsize) {
      FUNC4 (FUNC3(), 9);
    }
    FUNC2 (q);
  }
}