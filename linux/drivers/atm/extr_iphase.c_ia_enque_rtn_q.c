
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct desc_tbl_t {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* tail; struct desc_tbl_t data; } ;
typedef TYPE_1__ IARTN_Q ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 TYPE_1__* kmalloc (int,int ) ;

__attribute__((used)) static int ia_enque_rtn_q (IARTN_Q *que, struct desc_tbl_t data) {
   IARTN_Q *entry = kmalloc(sizeof(*entry), GFP_ATOMIC);
   if (!entry)
      return -ENOMEM;
   entry->data = data;
   entry->next = ((void*)0);
   if (que->next == ((void*)0))
      que->next = que->tail = entry;
   else {
      que->tail->next = entry;
      que->tail = que->tail->next;
   }
   return 1;
}
