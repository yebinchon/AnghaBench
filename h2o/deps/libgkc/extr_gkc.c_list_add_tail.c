
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {int prev; } ;


 int list_add (int ,struct list*) ;

__attribute__((used)) static inline void list_add_tail(struct list *l, struct list *n)
{
    list_add(l->prev, n);
}
