
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * baseline; } ;
struct TYPE_5__ {int attr_session; int * mkdir_map; int * index; int tmp; int target_path; int * pfx; int update_conflicts; int remove_conflicts; int pool; int removes; TYPE_1__ opts; scalar_t__ opts_free_baseline; } ;
typedef TYPE_2__ checkout_data ;


 int git__free (int *) ;
 int git_attr_session__free (int *) ;
 int git_buf_dispose (int *) ;
 int git_index_free (int *) ;
 int git_pool_clear (int *) ;
 int git_strmap_free (int *) ;
 int git_tree_free (int *) ;
 int git_vector_free (int *) ;
 int git_vector_free_deep (int *) ;

__attribute__((used)) static void checkout_data_clear(checkout_data *data)
{
 if (data->opts_free_baseline) {
  git_tree_free(data->opts.baseline);
  data->opts.baseline = ((void*)0);
 }

 git_vector_free(&data->removes);
 git_pool_clear(&data->pool);

 git_vector_free_deep(&data->remove_conflicts);
 git_vector_free_deep(&data->update_conflicts);

 git__free(data->pfx);
 data->pfx = ((void*)0);

 git_buf_dispose(&data->target_path);
 git_buf_dispose(&data->tmp);

 git_index_free(data->index);
 data->index = ((void*)0);

 git_strmap_free(data->mkdir_map);
 data->mkdir_map = ((void*)0);

 git_attr_session__free(&data->attr_session);
}
