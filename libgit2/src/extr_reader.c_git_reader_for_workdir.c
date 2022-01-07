
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int read; } ;
struct TYPE_7__ {int index; int * repo; TYPE_1__ reader; } ;
typedef TYPE_2__ workdir_reader ;
typedef int git_repository ;
typedef int git_reader ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int assert (int) ;
 TYPE_2__* git__calloc (int,int) ;
 int git__free (TYPE_2__*) ;
 int git_repository_index__weakptr (int *,int *) ;
 int workdir_reader_read ;

int git_reader_for_workdir(
 git_reader **out,
 git_repository *repo,
 bool validate_index)
{
 workdir_reader *reader;
 int error;

 assert(out && repo);

 reader = git__calloc(1, sizeof(workdir_reader));
 GIT_ERROR_CHECK_ALLOC(reader);

 reader->reader.read = workdir_reader_read;
 reader->repo = repo;

 if (validate_index &&
     (error = git_repository_index__weakptr(&reader->index, repo)) < 0) {
  git__free(reader);
  return error;
 }

 *out = (git_reader *)reader;
 return 0;
}
