
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb_backend ;
typedef int fake_backend ;


 int git__free (int *) ;

__attribute__((used)) static void fake_backend__free(git_odb_backend *_backend)
{
 fake_backend *backend;

 backend = (fake_backend *)_backend;

 git__free(backend);
}
