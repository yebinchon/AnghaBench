#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* fsync_next; scalar_t__ dirty; } ;
typedef  TYPE_1__ storage_binlog_file_t ;

/* Variables and functions */
 TYPE_1__* dirty_binlog_queue_head ; 
 int /*<<< orphan*/  mutex_dirty_binlog_queue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

storage_binlog_file_t *FUNC2 (void) {
  storage_binlog_file_t *B = NULL;
  FUNC0 (&mutex_dirty_binlog_queue);
  if (dirty_binlog_queue_head) {
    B = dirty_binlog_queue_head;
    dirty_binlog_queue_head = dirty_binlog_queue_head->fsync_next;
    B->dirty = 0;
    B->fsync_next = NULL;
  }
  FUNC1 (&mutex_dirty_binlog_queue);
  return B;
}