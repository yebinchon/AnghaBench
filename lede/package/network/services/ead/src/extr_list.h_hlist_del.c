
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_node {int * pprev; int * next; } ;


 int __hlist_del (struct hlist_node*) ;

__attribute__((used)) static inline void hlist_del(struct hlist_node *n)
{
 __hlist_del(n);
 n->next = ((void*)0);
 n->pprev = ((void*)0);
}
