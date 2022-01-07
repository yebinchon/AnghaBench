
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_log_data {struct line_log_data* next; int path; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static struct line_log_data *
search_line_log_data(struct line_log_data *list, const char *path,
       struct line_log_data **insertion_point)
{
 struct line_log_data *p = list;
 if (insertion_point)
  *insertion_point = ((void*)0);
 while (p) {
  int cmp = strcmp(p->path, path);
  if (!cmp)
   return p;
  if (insertion_point && cmp < 0)
   *insertion_point = p;
  p = p->next;
 }
 return ((void*)0);
}
