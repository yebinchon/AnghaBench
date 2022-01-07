
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct volatile_list_head {int next; int prev; } ;


 int __volatile_list_del (int ,int ) ;

__attribute__((used)) static inline void volatile_list_del(volatile struct volatile_list_head *elem)
{
 __volatile_list_del(elem->prev, elem->next);
}
