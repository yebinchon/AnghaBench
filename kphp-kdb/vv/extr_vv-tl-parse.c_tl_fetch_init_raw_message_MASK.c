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
struct raw_message {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct raw_message*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct raw_message*) ; 
 int /*<<< orphan*/  rwm_total_msgs ; 
 int /*<<< orphan*/  tl_in_raw_msg_methods ; 
 int /*<<< orphan*/  tl_type_raw_msg ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3 (struct raw_message *msg, int size) {
  struct raw_message *r = (struct raw_message *)FUNC2 (sizeof (*r));
  *r = *msg;
  rwm_total_msgs ++;
  FUNC1 (msg);
  return FUNC0 (r, 0, tl_type_raw_msg, &tl_in_raw_msg_methods, size);
}