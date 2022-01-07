
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct pack_backend {int packs; int * pack_folder; } ;
typedef int git_odb_backend ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int S_ISDIR (int ) ;
 int git_buf_dispose (int *) ;
 int git_buf_sets (int *,int *) ;
 int git_odb__error_notfound (char*,int *,int ) ;
 int git_path_direach (int *,int ,int ,struct pack_backend*) ;
 int git_vector_sort (int *) ;
 scalar_t__ p_stat (int *,struct stat*) ;
 int packfile_load__cb ;

__attribute__((used)) static int pack_backend__refresh(git_odb_backend *backend_)
{
 int error;
 struct stat st;
 git_buf path = GIT_BUF_INIT;
 struct pack_backend *backend = (struct pack_backend *)backend_;

 if (backend->pack_folder == ((void*)0))
  return 0;

 if (p_stat(backend->pack_folder, &st) < 0 || !S_ISDIR(st.st_mode))
  return git_odb__error_notfound("failed to refresh packfiles", ((void*)0), 0);

 git_buf_sets(&path, backend->pack_folder);


 error = git_path_direach(&path, 0, packfile_load__cb, backend);

 git_buf_dispose(&path);
 git_vector_sort(&backend->packs);

 return error;
}
