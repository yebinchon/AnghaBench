
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_log_data {int path; int ranges; } ;


 int assert (struct line_log_data*) ;
 int line_log_data_init (struct line_log_data*) ;
 int range_set_copy (int *,int *) ;
 struct line_log_data* xmalloc (int) ;
 int xstrdup (int ) ;

__attribute__((used)) static struct line_log_data *line_log_data_copy_one(struct line_log_data *r)
{
 struct line_log_data *ret = xmalloc(sizeof(*ret));

 assert(r);
 line_log_data_init(ret);
 range_set_copy(&ret->ranges, &r->ranges);

 ret->path = xstrdup(r->path);

 return ret;
}
