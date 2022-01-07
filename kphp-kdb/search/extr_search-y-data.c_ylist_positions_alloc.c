
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ylist_decoder_stack_entry {int num; TYPE_1__* positions_tail; TYPE_1__* positions_head; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ list_int_entry_t ;
struct TYPE_6__ {int num; TYPE_1__* head; } ;


 scalar_t__ likely (int) ;
 TYPE_4__ list_int_free_blocks ;
 int ylist_positions_free (struct ylist_decoder_stack_entry*) ;
 TYPE_1__* zmalloc (int) ;
 TYPE_1__* ztmalloc (int) ;

__attribute__((used)) static void ylist_positions_alloc (struct ylist_decoder_stack_entry *data, int num) {

  if (data->num) {
    ylist_positions_free (data);
  }
  data->num = num;
  int i = 0;
  list_int_entry_t *p;
  if (likely (num <= list_int_free_blocks.num)) {

    p = data->positions_head = list_int_free_blocks.head;
    for (i = 1; i < num; i++) {
      p = p->next;
    }
    data->positions_tail = p;
    list_int_free_blocks.num -= num;
    list_int_free_blocks.head = p->next;
    p->next = ((void*)0);
  } else {
    data->positions_head = data->positions_tail = zmalloc (sizeof (*p));
    data->positions_tail->next = ((void*)0);
    for (i = 1; i < num; i++) {
      p = ztmalloc (sizeof (*p));
      p->next = ((void*)0);
      data->positions_tail->next = p;
      data->positions_tail = p;
    }
  }
}
