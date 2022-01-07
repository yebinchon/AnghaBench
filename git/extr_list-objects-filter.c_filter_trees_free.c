
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_trees_depth_data {int seen_at_depth; } ;


 int free (struct filter_trees_depth_data*) ;
 int oidmap_free (int *,int) ;

__attribute__((used)) static void filter_trees_free(void *filter_data) {
 struct filter_trees_depth_data *d = filter_data;
 if (!d)
  return;
 oidmap_free(&d->seen_at_depth, 1);
 free(d);
}
