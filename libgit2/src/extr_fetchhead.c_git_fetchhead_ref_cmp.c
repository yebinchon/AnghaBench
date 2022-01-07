
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ref_name; scalar_t__ is_merge; } ;
typedef TYPE_1__ git_fetchhead_ref ;


 int strcmp (scalar_t__,scalar_t__) ;

int git_fetchhead_ref_cmp(const void *a, const void *b)
{
 const git_fetchhead_ref *one = (const git_fetchhead_ref *)a;
 const git_fetchhead_ref *two = (const git_fetchhead_ref *)b;

 if (one->is_merge && !two->is_merge)
  return -1;
 if (two->is_merge && !one->is_merge)
  return 1;

 if (one->ref_name && two->ref_name)
  return strcmp(one->ref_name, two->ref_name);
 else if (one->ref_name)
  return -1;
 else if (two->ref_name)
  return 1;

 return 0;
}
