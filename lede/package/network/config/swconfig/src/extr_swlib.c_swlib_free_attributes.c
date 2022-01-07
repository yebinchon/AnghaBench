
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_attr {struct switch_attr* description; struct switch_attr* name; struct switch_attr* next; } ;


 int free (struct switch_attr*) ;

__attribute__((used)) static void
swlib_free_attributes(struct switch_attr **head)
{
 struct switch_attr *a = *head;
 struct switch_attr *next;

 while (a) {
  next = a->next;
  free(a->name);
  free(a->description);
  free(a);
  a = next;
 }
 *head = ((void*)0);
}
