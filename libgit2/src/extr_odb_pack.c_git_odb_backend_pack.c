
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_backend {int pack_folder; } ;
typedef int git_odb_backend ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int git_buf_cstr (int *) ;
 int git_buf_detach (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_joinpath (int *,char const*,char*) ;
 scalar_t__ git_path_isdir (int ) ;
 scalar_t__ pack_backend__alloc (struct pack_backend**,int) ;
 int pack_backend__free (int *) ;
 int pack_backend__refresh (int *) ;

int git_odb_backend_pack(git_odb_backend **backend_out, const char *objects_dir)
{
 int error = 0;
 struct pack_backend *backend = ((void*)0);
 git_buf path = GIT_BUF_INIT;

 if (pack_backend__alloc(&backend, 8) < 0)
  return -1;

 if (!(error = git_buf_joinpath(&path, objects_dir, "pack")) &&
  git_path_isdir(git_buf_cstr(&path)))
 {
  backend->pack_folder = git_buf_detach(&path);
  error = pack_backend__refresh((git_odb_backend *)backend);
 }

 if (error < 0) {
  pack_backend__free((git_odb_backend *)backend);
  backend = ((void*)0);
 }

 *backend_out = (git_odb_backend *)backend;

 git_buf_dispose(&path);

 return error;
}
