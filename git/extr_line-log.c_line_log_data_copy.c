
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_log_data {struct line_log_data* next; } ;


 int assert (struct line_log_data*) ;
 struct line_log_data* line_log_data_copy_one (struct line_log_data*) ;

__attribute__((used)) static struct line_log_data *
line_log_data_copy(struct line_log_data *r)
{
 struct line_log_data *ret = ((void*)0);
 struct line_log_data *tmp = ((void*)0), *prev = ((void*)0);

 assert(r);
 ret = tmp = prev = line_log_data_copy_one(r);
 r = r->next;
 while (r) {
  tmp = line_log_data_copy_one(r);
  prev->next = tmp;
  prev = tmp;
  r = r->next;
 }

 return ret;
}
