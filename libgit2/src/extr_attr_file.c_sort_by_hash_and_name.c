
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ name_hash; int name; } ;
typedef TYPE_1__ git_attr_name ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int sort_by_hash_and_name(const void *a_raw, const void *b_raw)
{
 const git_attr_name *a = a_raw;
 const git_attr_name *b = b_raw;

 if (b->name_hash < a->name_hash)
  return 1;
 else if (b->name_hash > a->name_hash)
  return -1;
 else
  return strcmp(b->name, a->name);
}
