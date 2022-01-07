
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {struct list* prev; struct list* next; } ;



__attribute__((used)) static inline void list_init(struct list *n)
{
    n->next = n;
    n->prev = n;
}
