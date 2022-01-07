
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int list_add_tail (struct list_head*,struct list_head*) ;
 int list_del (struct list_head*) ;

__attribute__((used)) static inline void list_replace_init(struct list_head *old,
         struct list_head *newp)
{
 struct list_head *head = old->next;

 list_del(old);
 list_add_tail(newp, head);
 INIT_LIST_HEAD(old);
}
