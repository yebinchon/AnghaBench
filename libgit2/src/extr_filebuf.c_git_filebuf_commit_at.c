
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path_original; } ;
typedef TYPE_1__ git_filebuf ;


 int GIT_ERROR_CHECK_ALLOC (int ) ;
 int git__free (int ) ;
 int git__strdup (char const*) ;
 int git_filebuf_commit (TYPE_1__*) ;

int git_filebuf_commit_at(git_filebuf *file, const char *path)
{
 git__free(file->path_original);
 file->path_original = git__strdup(path);
 GIT_ERROR_CHECK_ALLOC(file->path_original);

 return git_filebuf_commit(file);
}
