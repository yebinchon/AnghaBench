#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* l; int /*<<< orphan*/ * next; } ;
typedef  TYPE_2__ temp_letter ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {char const* data; int data_len; } ;

/* Variables and functions */
 int FIELDS_N ; 
 scalar_t__ MAX_LETTER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (long long) ; 
 int field_n ; 
 int /*<<< orphan*/ * field_names ; 
 char** field_value ; 
 int* field_value_len ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  id_to_letter ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 TYPE_3__* letter_buf ; 
 void** FUNC5 (int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 int now ; 
 size_t FUNC7 (char*,char*,int,...) ; 
 scalar_t__ FUNC8 (char const*) ; 

int FUNC9 (long long id, int priority, int delay, const char *error) {
  if (FUNC8 (error) >= MAX_LETTER_SIZE) {
    return 0;
  }

  void **ptr = FUNC5 (&id_to_letter, id);
  if (ptr != NULL) {
    temp_letter *l = (temp_letter *)*ptr;
    FUNC0 (l != NULL && l->l != NULL && l->next != NULL);

    int len = FUNC8 (l->l->data);
    FUNC0 (len < l->l->data_len);
    FUNC6 (letter_buf->data, l->l->data, len + 1);

    FUNC0 (FUNC3 (letter_buf->data) >= 4);

    int priority_i = FUNC2 (field_names[0]);
    FUNC0 (priority_i != -1 && field_value_len[priority_i] == 1);
    field_value[priority_i][0] = '0' + priority;

    int send_after_i = FUNC2 (field_names[FIELDS_N - 4]);
    if (send_after_i != -1) {
      FUNC0 (send_after_i == field_n - 4 && field_value_len[send_after_i] == 10);
      field_value[send_after_i][FUNC7 (field_value[send_after_i], "%010d", now + delay - 1)] = '"';
    } else {
      delay = 0;
    }

    int time_sent_i = FUNC2 (field_names[FIELDS_N - 3]);
    FUNC0 (time_sent_i == field_n - 3 && field_value_len[time_sent_i] == 10);
    field_value[time_sent_i][FUNC7 (field_value[time_sent_i], "%010d", now)] = '"';

    int error_i = FUNC2 (field_names[FIELDS_N - 1]);
    FUNC0 (error_i == field_n - 1);
    FUNC7 (field_value[error_i] - 12, "%010d:\"%s\";}", (int)FUNC8 (error), error);

    FUNC1 (id);
    FUNC4 (priority, delay);
    return 1;
  }

  return 0;
}