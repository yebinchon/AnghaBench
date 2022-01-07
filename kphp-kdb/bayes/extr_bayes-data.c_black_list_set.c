
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int text_len; struct TYPE_4__* next; void* text; } ;
typedef TYPE_1__ black_list ;


 int assert (int ) ;
 TYPE_1__* bl_head ;
 int black_list_init (TYPE_1__*) ;
 int memcpy (void*,char*,int) ;
 void* qmalloc (int) ;

void black_list_set (char *buf, int len) {
  black_list *cur = bl_head;
  int i, j;
  for (i = 0; i < len; i++) {
    for (j = i; j < len && buf[j] != '\t'; j++) ;
    buf[j] = 0;

    assert (cur->next == ((void*)0));
    cur->next = qmalloc (sizeof (black_list));
    black_list_init (cur->next);
    cur->next->text_len = j - i;
    cur->next->text = qmalloc (j - i + 1);
    memcpy (cur->next->text, buf + i, j - i + 1);
    cur = cur->next;

    i = j;
  }
}
