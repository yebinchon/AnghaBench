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
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ TCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,double) ; 
 double FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  loop ; 
 int max_read_sockets ; 
 int /*<<< orphan*/  nrecv_total ; 
 scalar_t__ start_time ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ type ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void) {
  int64_t diff;

  FUNC4(loop);
  diff = FUNC3(loop) - start_time;

  FUNC1(stderr, "%s_pump%d_server: %.1f gbit/s\n",
          type == TCP ? "tcp" : "pipe",
          max_read_sockets,
          FUNC2(nrecv_total, diff));
  FUNC0(stderr);
}