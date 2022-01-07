
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter {int filter_data; int (* free_fn ) (int ) ;scalar_t__ omits; int (* finalize_omits_fn ) (scalar_t__,int ) ;} ;


 int free (struct filter*) ;
 int stub1 (scalar_t__,int ) ;
 int stub2 (int ) ;

void list_objects_filter__free(struct filter *filter)
{
 if (!filter)
  return;
 if (filter->finalize_omits_fn && filter->omits)
  filter->finalize_omits_fn(filter->omits, filter->filter_data);
 filter->free_fn(filter->filter_data);
 free(filter);
}
