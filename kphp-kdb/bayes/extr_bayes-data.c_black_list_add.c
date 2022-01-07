
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct lev_bayes_black_list {scalar_t__ text_len; int type; int text; } ;
struct TYPE_5__ {scalar_t__ text_len; void* text; struct TYPE_5__* next; } ;
typedef TYPE_1__ black_list ;


 TYPE_1__* bl_head ;
 int black_list_do_delete (TYPE_1__*) ;
 int black_list_init (TYPE_1__*) ;
 int memcpy (void*,int ,int) ;
 void* qmalloc (int) ;
 scalar_t__ strcmp (void*,int ) ;

int black_list_add (struct lev_bayes_black_list *E) {
  black_list *cur = bl_head;
  while (cur->next != ((void*)0) && (cur->next->text_len != E->text_len || strcmp (cur->next->text, E->text))) {
    cur = cur->next;
  }

  if (cur->next != ((void*)0)) {
    if (E->type & 1) {
      black_list_do_delete (cur);
      return 1;
    } else {
      return 0;
    }
  } else {
    if (E->type & 1) {
      return 0;
    } else {
      cur->next = qmalloc (sizeof (black_list));
      black_list_init (cur->next);
      cur->next->text_len = E->text_len;
      cur->next->text = qmalloc (E->text_len + 1);
      memcpy (cur->next->text, E->text, E->text_len + 1);
      return 1;
    }
  }
}
