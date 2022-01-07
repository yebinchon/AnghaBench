
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int text_len; struct TYPE_5__* text; struct TYPE_5__* next; } ;
typedef TYPE_1__ black_list ;


 int black_list_init (TYPE_1__*) ;
 int qfree (TYPE_1__*,int) ;

void black_list_do_delete (black_list *bl) {
  black_list *next = bl->next;
  bl->next = bl->next->next;
  qfree (next->text, next->text_len + 1);
  black_list_init (next);
  qfree (next, sizeof (black_list));
}
