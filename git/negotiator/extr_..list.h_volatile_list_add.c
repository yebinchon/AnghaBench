
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct volatile_list_head {struct volatile_list_head volatile* next; struct volatile_list_head volatile* prev; } ;



__attribute__((used)) static inline void volatile_list_add(volatile struct volatile_list_head *newp,
         volatile struct volatile_list_head *head)
{
 head->next->prev = newp;
 newp->next = head->next;
 newp->prev = head;
 head->next = newp;
}
