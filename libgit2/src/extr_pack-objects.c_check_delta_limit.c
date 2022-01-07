
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* delta_sibling; struct TYPE_3__* delta_child; } ;
typedef TYPE_1__ git_pobject ;



__attribute__((used)) static size_t check_delta_limit(git_pobject *me, size_t n)
{
 git_pobject *child = me->delta_child;
 size_t m = n;

 while (child) {
  size_t c = check_delta_limit(child, n + 1);
  if (m < c)
   m = c;
  child = child->delta_sibling;
 }
 return m;
}
