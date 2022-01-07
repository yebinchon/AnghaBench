
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loose_backend ;
typedef int git_odb_backend ;


 int assert (int *) ;
 int git__free (int *) ;

__attribute__((used)) static void loose_backend__free(git_odb_backend *_backend)
{
 loose_backend *backend;
 assert(_backend);
 backend = (loose_backend *)_backend;

 git__free(backend);
}
