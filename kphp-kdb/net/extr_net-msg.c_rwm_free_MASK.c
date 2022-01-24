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
struct raw_message {int magic; struct msg_part* first; } ;
struct msg_part {int dummy; } ;

/* Variables and functions */
 int RM_INIT_MAGIC ; 
 int RM_TMP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct raw_message*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct msg_part*) ; 
 int /*<<< orphan*/  rwm_total_msgs ; 

int FUNC3 (struct raw_message *raw) {
  struct msg_part *mp = raw->first;
  int t = raw->magic;
  FUNC0 (raw->magic == RM_INIT_MAGIC || raw->magic == RM_TMP_MAGIC);
  rwm_total_msgs --;
  FUNC1 (raw, 0, sizeof (*raw));
  return t == RM_TMP_MAGIC ? 0 : FUNC2 (mp);
}