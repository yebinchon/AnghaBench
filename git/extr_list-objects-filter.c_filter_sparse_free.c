
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_sparse_data {struct filter_sparse_data* array_frame; } ;


 int free (struct filter_sparse_data*) ;

__attribute__((used)) static void filter_sparse_free(void *filter_data)
{
 struct filter_sparse_data *d = filter_data;
 free(d->array_frame);
 free(d);
}
