
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* tail; } ;
typedef TYPE_1__ IARTN_Q ;



__attribute__((used)) static IARTN_Q * ia_deque_rtn_q (IARTN_Q *que) {
   IARTN_Q *tmpdata;
   if (que->next == ((void*)0))
      return ((void*)0);
   tmpdata = que->next;
   if ( que->next == que->tail)
      que->next = que->tail = ((void*)0);
   else
      que->next = que->next->next;
   return tmpdata;
}
