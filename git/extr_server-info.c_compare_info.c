
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_info {scalar_t__ old_num; scalar_t__ p; } ;



__attribute__((used)) static int compare_info(const void *a_, const void *b_)
{
 struct pack_info *const *a = a_;
 struct pack_info *const *b = b_;

 if (0 <= (*a)->old_num && 0 <= (*b)->old_num)

  return (*a)->old_num - (*b)->old_num;
 else if (0 <= (*a)->old_num)

  return -1;
 else if (0 <= (*b)->old_num)

  return 1;


 if ((*a)->p == (*b)->p)
  return 0;
 else if ((*a)->p < (*b)->p)
  return -1;
 else
  return 1;
}
