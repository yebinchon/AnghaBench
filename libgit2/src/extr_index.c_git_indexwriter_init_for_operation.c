
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {int should_write; } ;
typedef TYPE_1__ git_indexwriter ;
typedef int git_index ;


 unsigned int GIT_CHECKOUT_DONT_WRITE_INDEX ;
 int git_indexwriter_init (TYPE_1__*,int *) ;
 int git_repository_index__weakptr (int **,int *) ;

int git_indexwriter_init_for_operation(
 git_indexwriter *writer,
 git_repository *repo,
 unsigned int *checkout_strategy)
{
 git_index *index;
 int error;

 if ((error = git_repository_index__weakptr(&index, repo)) < 0 ||
  (error = git_indexwriter_init(writer, index)) < 0)
  return error;

 writer->should_write = (*checkout_strategy & GIT_CHECKOUT_DONT_WRITE_INDEX) == 0;
 *checkout_strategy |= GIT_CHECKOUT_DONT_WRITE_INDEX;

 return 0;
}
