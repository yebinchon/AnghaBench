
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oidset {int dummy; } ;
struct combine_filter_data {size_t nr; TYPE_1__* sub; } ;
struct TYPE_2__ {int omits; } ;


 int add_all (struct oidset*,int *) ;
 int oidset_clear (int *) ;

__attribute__((used)) static void filter_combine__finalize_omits(
 struct oidset *omits,
 void *filter_data)
{
 struct combine_filter_data *d = filter_data;
 size_t sub;

 for (sub = 0; sub < d->nr; sub++) {
  add_all(omits, &d->sub[sub].omits);
  oidset_clear(&d->sub[sub].omits);
 }
}
