
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_indexwriter ;
struct TYPE_5__ {scalar_t__ dirty; } ;
typedef TYPE_1__ git_index ;


 int GIT_INDEXWRITER_INIT ;
 int git_indexwriter_cleanup (int *) ;
 int git_indexwriter_commit (int *) ;
 int git_indexwriter_init (int *,TYPE_1__*) ;
 int truncate_racily_clean (TYPE_1__*) ;

int git_index_write(git_index *index)
{
 git_indexwriter writer = GIT_INDEXWRITER_INIT;
 int error;

 truncate_racily_clean(index);

 if ((error = git_indexwriter_init(&writer, index)) == 0 &&
  (error = git_indexwriter_commit(&writer)) == 0)
  index->dirty = 0;

 git_indexwriter_cleanup(&writer);

 return error;
}
