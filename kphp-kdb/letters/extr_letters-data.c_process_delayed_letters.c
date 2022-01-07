
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int real_priority; long long task_id; int time_received; int id; TYPE_1__* l; struct TYPE_6__* next; } ;
typedef TYPE_2__ temp_letter ;
struct TYPE_7__ {int data; } ;
struct TYPE_5__ {int data_len; int data; } ;


 int DELAYED_TABLE_SIZE ;
 int GET_DELAYED_ID (scalar_t__) ;
 int MAX_DELAY ;
 int assert (int) ;
 TYPE_2__* delayed_head_letter ;
 int delete_letter (int ) ;
 int get_fields (int ) ;
 int is_deleted_task (long long,int) ;
 int last_process_delayed_time ;
 int letter_add (int,int ) ;
 TYPE_3__* letter_buf ;
 int * letter_get (int ) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ now ;
 int strlen (int ) ;

void process_delayed_letters (int all, int skip) {
  while (letter_get (0) != ((void*)0)) {
  }

  int en = GET_DELAYED_ID(now + 1 + all * MAX_DELAY);

  while (last_process_delayed_time != en) {
    temp_letter *cur_letter = &delayed_head_letter[last_process_delayed_time];
    if (cur_letter->next != cur_letter) {
      cur_letter = cur_letter->next;

      int len = strlen (cur_letter->l->data);
      assert (len < cur_letter->l->data_len);
      memcpy (letter_buf->data, cur_letter->l->data, len + 1);

      assert (get_fields (letter_buf->data) >= 4);

      int real_priority = skip ? 0 : cur_letter->real_priority;
      long long task_id = cur_letter->task_id;
      int time_received = cur_letter->time_received;

      delete_letter (cur_letter->id);


      if (!is_deleted_task (task_id, time_received)) {
        letter_add (real_priority, 0);
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
