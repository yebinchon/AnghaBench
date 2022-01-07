
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct volatile_list_head {struct volatile_list_head volatile* next; } ;



__attribute__((used)) static inline int volatile_list_empty(volatile struct volatile_list_head *head)
{
 return head == head->next;
}
