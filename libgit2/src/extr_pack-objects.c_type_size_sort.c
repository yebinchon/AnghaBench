
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ hash; scalar_t__ size; } ;
typedef TYPE_1__ git_pobject ;



__attribute__((used)) static int type_size_sort(const void *_a, const void *_b)
{
 const git_pobject *a = (git_pobject *)_a;
 const git_pobject *b = (git_pobject *)_b;

 if (a->type > b->type)
  return -1;
 if (a->type < b->type)
  return 1;
 if (a->hash > b->hash)
  return -1;
 if (a->hash < b->hash)
  return 1;
 if (a->size > b->size)
  return -1;
 if (a->size < b->size)
  return 1;
 return a < b ? -1 : (a > b);
}
