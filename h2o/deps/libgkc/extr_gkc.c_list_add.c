
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {struct list* prev; struct list* next; } ;



__attribute__((used)) static inline void list_add(struct list *l, struct list *n)
{
    n->next = l->next;
    n->next->prev = n;
    l->next = n;
    n->prev = l;
}
