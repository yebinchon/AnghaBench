
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; void** contents; } ;
typedef TYPE_1__ git_vector ;



void git_vector_reverse(git_vector *v)
{
 size_t a, b;

 if (v->length == 0)
  return;

 a = 0;
 b = v->length - 1;

 while (a < b) {
  void *tmp = v->contents[a];
  v->contents[a] = v->contents[b];
  v->contents[b] = tmp;
  a++;
  b--;
 }
}
