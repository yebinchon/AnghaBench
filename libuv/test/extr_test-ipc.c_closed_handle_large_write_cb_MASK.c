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
typedef  int /*<<< orphan*/  uv_write_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int LARGE_SIZE ; 
 int closed_handle_data_read ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  write_reqs ; 
 scalar_t__ write_reqs_completed ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void FUNC4(uv_write_t* req, int status) {
  FUNC1(status == 0);
  FUNC1(closed_handle_data_read = LARGE_SIZE);
  if (++write_reqs_completed == FUNC0(write_reqs)) {
    write_reqs_completed = 0;
    if (FUNC3() > 0)
      FUNC2();
  }
}