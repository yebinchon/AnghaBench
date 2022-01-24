#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_info_t ;
struct TYPE_2__ {size_t resident_size; } ;
typedef  TYPE_1__ task_basic_info_data_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  TASK_BASIC_INFO ; 
 int /*<<< orphan*/  TASK_BASIC_INFO_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(size_t* rss) {
  mach_msg_type_number_t count;
  task_basic_info_data_t info;
  kern_return_t err;

  count = TASK_BASIC_INFO_COUNT;
  err = FUNC2(FUNC1(),
                  TASK_BASIC_INFO,
                  (task_info_t) &info,
                  &count);
  (void) &err;
  /* task_info(TASK_BASIC_INFO) cannot really fail. Anything other than
   * KERN_SUCCESS implies a libuv bug.
   */
  FUNC0(err == KERN_SUCCESS);
  *rss = info.resident_size;

  return 0;
}