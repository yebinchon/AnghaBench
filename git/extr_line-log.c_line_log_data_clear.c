
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_log_data {scalar_t__ pair; int ranges; } ;


 int diff_free_filepair (scalar_t__) ;
 int range_set_release (int *) ;

__attribute__((used)) static void line_log_data_clear(struct line_log_data *r)
{
 range_set_release(&r->ranges);
 if (r->pair)
  diff_free_filepair(r->pair);
}
