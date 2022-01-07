
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int removes; int pool; } ;
typedef TYPE_1__ checkout_data ;


 int GIT_ERROR_CHECK_ALLOC (char*) ;
 char* git_pool_strdup (int *,char const*) ;
 int git_vector_insert (int *,char*) ;

__attribute__((used)) static int checkout_queue_remove(checkout_data *data, const char *path)
{
 char *copy = git_pool_strdup(&data->pool, path);
 GIT_ERROR_CHECK_ALLOC(copy);
 return git_vector_insert(&data->removes, copy);
}
