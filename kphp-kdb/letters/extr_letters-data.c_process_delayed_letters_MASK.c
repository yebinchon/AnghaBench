#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int real_priority; long long task_id; int time_received; int /*<<< orphan*/  id; TYPE_1__* l; struct TYPE_6__* next; } ;
typedef  TYPE_2__ temp_letter ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int data_len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int DELAYED_TABLE_SIZE ; 
 int FUNC0 (scalar_t__) ; 
 int MAX_DELAY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* delayed_head_letter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (long long,int) ; 
 int last_process_delayed_time ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* letter_buf ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ now ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9 (int all, int skip) {
  while (FUNC6 (0) != NULL) {
  }

  int en = FUNC0(now + 1 + all * MAX_DELAY);

  while (last_process_delayed_time != en) {
    temp_letter *cur_letter = &delayed_head_letter[last_process_delayed_time];
    if (cur_letter->next != cur_letter) {
      cur_letter = cur_letter->next;

      int len = FUNC8 (cur_letter->l->data);
      FUNC1 (len < cur_letter->l->data_len);
      FUNC7 (letter_buf->data, cur_letter->l->data, len + 1);

      FUNC1 (FUNC3 (letter_buf->data) >= 4);

      int real_priority = skip ? 0 : cur_letter->real_priority;
      long long task_id = cur_letter->task_id;
      int time_received = cur_letter->time_received;

      FUNC2 (cur_letter->id);
      //DO NOT USE LETTER AFTER DELETE

      if (!FUNC4 (task_id, time_received)) {
        FUNC5 (real_priority, 0);
      }
    } else {
      if (++last_process_delayed_time == DELAYED_TABLE_SIZE) {
        last_process_delayed_time = 0;
      }
    }
  }
  if (--last_process_delayed_time == -1) {
    last_process_delayed_time = DELAYED_TABLE_SIZE - 1;
  }
}