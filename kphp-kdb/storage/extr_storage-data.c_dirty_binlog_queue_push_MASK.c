#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int dirty; struct TYPE_5__* fsync_next; } ;
typedef  TYPE_1__ storage_binlog_file_t ;

/* Variables and functions */
 TYPE_1__* dirty_binlog_queue_head ; 
 TYPE_1__* dirty_binlog_queue_tail ; 
 int /*<<< orphan*/  mutex_dirty_binlog_queue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2 (storage_binlog_file_t *B) {
  if (B->dirty) {
    return;
  }
  B->dirty = 1;
  FUNC0 (&mutex_dirty_binlog_queue);
  B->fsync_next = NULL;
  if (dirty_binlog_queue_head == NULL) {
    dirty_binlog_queue_head = dirty_binlog_queue_tail = B;
  } else {
    dirty_binlog_queue_tail = dirty_binlog_queue_tail->fsync_next = B;
  }
  FUNC1 (&mutex_dirty_binlog_queue);
}