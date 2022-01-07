
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; struct list_head* prev; } ;



__attribute__((used)) static inline void list_splice(struct list_head *add, struct list_head *head)
{

 if (add != add->next) {
  add->next->prev = head;
  add->prev->next = head->next;
  head->next->prev = add->prev;
  head->next = add->next;
 }
}
