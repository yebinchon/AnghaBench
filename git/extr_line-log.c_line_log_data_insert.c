
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_log_data {char* path; struct line_log_data* next; int ranges; } ;


 int free (char*) ;
 int range_set_append (int *,long,long) ;
 int range_set_append_unsafe (int *,long,long) ;
 struct line_log_data* search_line_log_data (struct line_log_data*,char*,struct line_log_data**) ;
 struct line_log_data* xcalloc (int,int) ;

__attribute__((used)) static void line_log_data_insert(struct line_log_data **list,
     char *path,
     long begin, long end)
{
 struct line_log_data *ip;
 struct line_log_data *p = search_line_log_data(*list, path, &ip);

 if (p) {
  range_set_append_unsafe(&p->ranges, begin, end);
  free(path);
  return;
 }

 p = xcalloc(1, sizeof(struct line_log_data));
 p->path = path;
 range_set_append(&p->ranges, begin, end);
 if (ip) {
  p->next = ip->next;
  ip->next = p;
 } else {
  p->next = *list;
  *list = p;
 }
}
