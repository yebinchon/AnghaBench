
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_objects_filter_options {int sub_nr; int * sub; } ;
struct filter {int finalize_omits_fn; int free_fn; int filter_object_fn; struct combine_filter_data* filter_data; scalar_t__ omits; } ;
struct combine_filter_data {int nr; TYPE_1__* sub; } ;
struct TYPE_2__ {int omits; int filter; } ;


 int filter_combine ;
 int filter_combine__finalize_omits ;
 int filter_combine__free ;
 int list_objects_filter__init (int *,int *) ;
 void* xcalloc (int,int) ;

__attribute__((used)) static void filter_combine__init(
 struct list_objects_filter_options *filter_options,
 struct filter* filter)
{
 struct combine_filter_data *d = xcalloc(1, sizeof(*d));
 size_t sub;

 d->nr = filter_options->sub_nr;
 d->sub = xcalloc(d->nr, sizeof(*d->sub));
 for (sub = 0; sub < d->nr; sub++)
  d->sub[sub].filter = list_objects_filter__init(
   filter->omits ? &d->sub[sub].omits : ((void*)0),
   &filter_options->sub[sub]);

 filter->filter_data = d;
 filter->filter_object_fn = filter_combine;
 filter->free_fn = filter_combine__free;
 filter->finalize_omits_fn = filter_combine__finalize_omits;
}
