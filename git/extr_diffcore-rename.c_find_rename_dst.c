
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct diff_rename_dst {TYPE_1__* two; } ;
struct diff_filespec {int path; } ;
struct TYPE_2__ {int path; } ;


 struct diff_rename_dst* rename_dst ;
 int rename_dst_nr ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int find_rename_dst(struct diff_filespec *two)
{
 int first, last;

 first = 0;
 last = rename_dst_nr;
 while (last > first) {
  int next = first + ((last - first) >> 1);
  struct diff_rename_dst *dst = &(rename_dst[next]);
  int cmp = strcmp(two->path, dst->two->path);
  if (!cmp)
   return next;
  if (cmp < 0) {
   last = next;
   continue;
  }
  first = next+1;
 }
 return -first - 1;
}
