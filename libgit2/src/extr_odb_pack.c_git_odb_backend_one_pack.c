
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_backend {int packs; } ;
struct git_pack_file {int dummy; } ;
typedef int git_odb_backend ;


 scalar_t__ git_mwindow_get_pack (struct git_pack_file**,char const*) ;
 scalar_t__ git_vector_insert (int *,struct git_pack_file*) ;
 scalar_t__ pack_backend__alloc (struct pack_backend**,int) ;
 int pack_backend__free (int *) ;

int git_odb_backend_one_pack(git_odb_backend **backend_out, const char *idx)
{
 struct pack_backend *backend = ((void*)0);
 struct git_pack_file *packfile = ((void*)0);

 if (pack_backend__alloc(&backend, 1) < 0)
  return -1;

 if (git_mwindow_get_pack(&packfile, idx) < 0 ||
  git_vector_insert(&backend->packs, packfile) < 0)
 {
  pack_backend__free((git_odb_backend *)backend);
  return -1;
 }

 *backend_out = (git_odb_backend *)backend;
 return 0;
}
