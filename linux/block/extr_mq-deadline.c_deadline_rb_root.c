
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct rb_root {int dummy; } ;
struct deadline_data {struct rb_root* sort_list; } ;


 size_t rq_data_dir (struct request*) ;

__attribute__((used)) static inline struct rb_root *
deadline_rb_root(struct deadline_data *dd, struct request *rq)
{
 return &dd->sort_list[rq_data_dir(rq)];
}
