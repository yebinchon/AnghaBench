
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; struct list_head* prev; } ;



__attribute__((used)) static inline void list_add(struct list_head *newp, struct list_head *head)
{
 head->next->prev = newp;
 newp->next = head->next;
 newp->prev = head;
 head->next = newp;
}
