
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* l; int * next; } ;
typedef TYPE_2__ temp_letter ;
struct TYPE_6__ {int data; } ;
struct TYPE_4__ {char const* data; int data_len; } ;


 int FIELDS_N ;
 scalar_t__ MAX_LETTER_SIZE ;
 int assert (int) ;
 int delete_letter (long long) ;
 int field_n ;
 int * field_names ;
 char** field_value ;
 int* field_value_len ;
 int get_field (int ) ;
 int get_fields (int ) ;
 int id_to_letter ;
 int letter_add (int,int) ;
 TYPE_3__* letter_buf ;
 void** map_ll_vptr_get (int *,long long) ;
 int memcpy (int ,char const*,int) ;
 int now ;
 size_t sprintf (char*,char*,int,...) ;
 scalar_t__ strlen (char const*) ;

int add_letter_priority (long long id, int priority, int delay, const char *error) {
  if (strlen (error) >= MAX_LETTER_SIZE) {
    return 0;
  }

  void **ptr = map_ll_vptr_get (&id_to_letter, id);
  if (ptr != ((void*)0)) {
    temp_letter *l = (temp_letter *)*ptr;
    assert (l != ((void*)0) && l->l != ((void*)0) && l->next != ((void*)0));

    int len = strlen (l->l->data);
    assert (len < l->l->data_len);
    memcpy (letter_buf->data, l->l->data, len + 1);

    assert (get_fields (letter_buf->data) >= 4);

    int priority_i = get_field (field_names[0]);
    assert (priority_i != -1 && field_value_len[priority_i] == 1);
    field_value[priority_i][0] = '0' + priority;

    int send_after_i = get_field (field_names[FIELDS_N - 4]);
    if (send_after_i != -1) {
      assert (send_after_i == field_n - 4 && field_value_len[send_after_i] == 10);
      field_value[send_after_i][sprintf (field_value[send_after_i], "%010d", now + delay - 1)] = '"';
    } else {
      delay = 0;
    }

    int time_sent_i = get_field (field_names[FIELDS_N - 3]);
    assert (time_sent_i == field_n - 3 && field_value_len[time_sent_i] == 10);
    field_value[time_sent_i][sprintf (field_value[time_sent_i], "%010d", now)] = '"';

    int error_i = get_field (field_names[FIELDS_N - 1]);
    assert (error_i == field_n - 1);
    sprintf (field_value[error_i] - 12, "%010d:\"%s\";}", (int)strlen (error), error);

    delete_letter (id);
    letter_add (priority, delay);
    return 1;
  }

  return 0;
}
