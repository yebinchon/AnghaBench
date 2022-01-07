
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb_backend ;


 int GIT_UNUSED (int *) ;
 void* git__malloc (size_t) ;

void *git_odb_backend_data_alloc(git_odb_backend *backend, size_t len)
{
 GIT_UNUSED(backend);
 return git__malloc(len);
}
