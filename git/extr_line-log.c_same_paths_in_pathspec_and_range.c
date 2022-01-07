
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pathspec {int nr; TYPE_1__* items; } ;
struct line_log_data {int path; struct line_log_data* next; } ;
struct TYPE_2__ {int match; } ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int same_paths_in_pathspec_and_range(struct pathspec *pathspec,
         struct line_log_data *range)
{
 int i;
 struct line_log_data *r;

 for (i = 0, r = range; i < pathspec->nr && r; i++, r = r->next)
  if (strcmp(pathspec->items[i].match, r->path))
   return 0;
 if (i < pathspec->nr || r)

  return 0;

 return 1;
}
