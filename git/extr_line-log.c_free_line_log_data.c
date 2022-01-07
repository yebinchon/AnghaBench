
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_log_data {struct line_log_data* next; } ;


 int free (struct line_log_data*) ;
 int line_log_data_clear (struct line_log_data*) ;

__attribute__((used)) static void free_line_log_data(struct line_log_data *r)
{
 while (r) {
  struct line_log_data *next = r->next;
  line_log_data_clear(r);
  free(r);
  r = next;
 }
}
