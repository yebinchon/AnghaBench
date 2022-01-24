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
struct raw_message {int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  RM_INIT_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct raw_message*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct raw_message*,void*,int) ; 
 int /*<<< orphan*/  rwm_total_msgs ; 

int FUNC2 (struct raw_message *raw, void *data, int alloc_bytes) {
  rwm_total_msgs ++;
  FUNC0 (raw, 0, sizeof (*raw));
  raw->magic = RM_INIT_MAGIC;
  return FUNC1 (raw, data, alloc_bytes);
}