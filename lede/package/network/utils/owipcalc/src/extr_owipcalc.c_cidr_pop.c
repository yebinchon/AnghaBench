
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cidr {struct cidr* next; } ;


 int free (struct cidr*) ;
 struct cidr* stack ;

__attribute__((used)) static bool cidr_pop(struct cidr *a)
{
 struct cidr *old = stack;

 if (old)
 {
  stack = stack->next;
  free(old);

  return 1;
 }

 return 0;
}
