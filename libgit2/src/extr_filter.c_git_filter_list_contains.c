
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t size; TYPE_1__* ptr; } ;
struct TYPE_7__ {TYPE_2__ filters; } ;
typedef TYPE_3__ git_filter_list ;
struct TYPE_5__ {int filter_name; } ;


 int assert (char const*) ;
 scalar_t__ strcmp (int ,char const*) ;

int git_filter_list_contains(
 git_filter_list *fl,
 const char *name)
{
 size_t i;

 assert(name);

 if (!fl)
  return 0;

 for (i = 0; i < fl->filters.size; i++) {
  if (strcmp(fl->filters.ptr[i].filter_name, name) == 0)
   return 1;
 }

 return 0;
}
