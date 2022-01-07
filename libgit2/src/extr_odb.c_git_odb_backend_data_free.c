
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb_backend ;


 int GIT_UNUSED (int *) ;
 int git__free (void*) ;

void git_odb_backend_data_free(git_odb_backend *backend, void *data)
{
 GIT_UNUSED(backend);
 git__free(data);
}
