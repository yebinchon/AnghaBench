
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ylist_decoder_stack_entry {scalar_t__ num; TYPE_1__* positions_tail; int positions_head; } ;
struct TYPE_4__ {scalar_t__ num; TYPE_1__* tail; int head; } ;
struct TYPE_3__ {int next; } ;


 TYPE_2__ list_int_free_blocks ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ylist_positions_free (struct ylist_decoder_stack_entry *data) {
  if (unlikely (!list_int_free_blocks.num)) {
    list_int_free_blocks.head = data->positions_head;
  } else {
    list_int_free_blocks.tail->next = data->positions_head;
  }
  list_int_free_blocks.tail = data->positions_tail;
  list_int_free_blocks.num += data->num;
}
