
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int text_len; struct TYPE_3__* next; int text; } ;
typedef TYPE_1__ black_list ;


 TYPE_1__* bl_head ;
 int memcpy (char*,int ,int) ;

int black_list_get (char *buf, int buf_len) {
  black_list *cur = bl_head;
  int cur_len = 0;
  while (cur->next != ((void*)0) && cur->next->text_len + cur_len + 1 < buf_len) {
    memcpy (buf + cur_len, cur->next->text, cur->next->text_len);
    cur_len += cur->next->text_len;
    buf[cur_len++] = '\t';
    cur = cur->next;
  }
  if (cur_len == 0) {
    cur_len = 1;
  }
  buf[cur_len - 1] = 0;

  if (cur->next != ((void*)0)) {
    return -1;
  }

  return cur_len - 1;
}
