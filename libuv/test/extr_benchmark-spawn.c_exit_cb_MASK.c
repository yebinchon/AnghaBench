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
typedef  int /*<<< orphan*/  uv_process_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  process_close_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(uv_process_t* process,
                    int64_t exit_status,
                    int term_signal) {
  FUNC0(exit_status == 42);
  FUNC0(term_signal == 0);
  FUNC1((uv_handle_t*)process, process_close_cb);
}