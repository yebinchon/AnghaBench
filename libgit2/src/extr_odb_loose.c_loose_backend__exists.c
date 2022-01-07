
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loose_backend ;
typedef int git_oid ;
typedef int git_odb_backend ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int assert (int) ;
 int git_buf_dispose (int *) ;
 int locate_object (int *,int *,int const*) ;

__attribute__((used)) static int loose_backend__exists(git_odb_backend *backend, const git_oid *oid)
{
 git_buf object_path = GIT_BUF_INIT;
 int error;

 assert(backend && oid);

 error = locate_object(&object_path, (loose_backend *)backend, oid);

 git_buf_dispose(&object_path);

 return !error;
}
