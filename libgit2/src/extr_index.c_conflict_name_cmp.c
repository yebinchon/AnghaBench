
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ours; scalar_t__ ancestor; } ;
typedef TYPE_1__ git_index_name_entry ;


 int strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static int conflict_name_cmp(const void *a, const void *b)
{
 const git_index_name_entry *name_a = a;
 const git_index_name_entry *name_b = b;

 if (name_a->ancestor && !name_b->ancestor)
  return 1;

 if (!name_a->ancestor && name_b->ancestor)
  return -1;

 if (name_a->ancestor)
  return strcmp(name_a->ancestor, name_b->ancestor);

 if (!name_a->ours || !name_b->ours)
  return 0;

 return strcmp(name_a->ours, name_b->ours);
}
