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
struct raw_message {scalar_t__ magic; TYPE_1__* first; } ;
struct TYPE_2__ {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 scalar_t__ RM_INIT_MAGIC ; 
 scalar_t__ RM_TMP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct raw_message*,struct raw_message*,int) ; 
 int /*<<< orphan*/  rwm_total_msgs ; 

void FUNC2 (struct raw_message *dest_raw, struct raw_message *src_raw) {
  FUNC0 (src_raw->magic == RM_INIT_MAGIC || src_raw->magic == RM_TMP_MAGIC);
  FUNC1 (dest_raw, src_raw, sizeof (struct raw_message));
  if (src_raw->magic == RM_INIT_MAGIC && src_raw->first) {
    src_raw->first->refcnt++;
  }
  rwm_total_msgs ++;
}