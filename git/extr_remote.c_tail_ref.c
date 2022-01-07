
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {struct ref* next; } ;



__attribute__((used)) static struct ref **tail_ref(struct ref **head)
{
 struct ref **tail = head;
 while (*tail)
  tail = &((*tail)->next);
 return tail;
}
