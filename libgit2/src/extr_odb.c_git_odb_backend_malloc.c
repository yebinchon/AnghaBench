
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb_backend ;


 void* git_odb_backend_data_alloc (int *,size_t) ;

void *git_odb_backend_malloc(git_odb_backend *backend, size_t len)
{
 return git_odb_backend_data_alloc(backend, len);
}
