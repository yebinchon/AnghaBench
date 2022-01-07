
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int loose_backend ;
typedef int git_oid ;
typedef int git_odb_backend ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_futils_touch (int ,int *) ;
 scalar_t__ object_file_name (TYPE_1__*,int *,int const*) ;

__attribute__((used)) static int loose_backend__freshen(
 git_odb_backend *_backend,
 const git_oid *oid)
{
 loose_backend *backend = (loose_backend *)_backend;
 git_buf path = GIT_BUF_INIT;
 int error;

 if (object_file_name(&path, backend, oid) < 0)
  return -1;

 error = git_futils_touch(path.ptr, ((void*)0));
 git_buf_dispose(&path);

 return error;
}
