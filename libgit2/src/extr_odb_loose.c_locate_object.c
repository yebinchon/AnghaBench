
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int loose_backend ;
typedef int git_oid ;
struct TYPE_4__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_ENOTFOUND ;
 int git_path_exists (int ) ;
 int object_file_name (TYPE_1__*,int *,int const*) ;

__attribute__((used)) static int locate_object(
 git_buf *object_location,
 loose_backend *backend,
 const git_oid *oid)
{
 int error = object_file_name(object_location, backend, oid);

 if (!error && !git_path_exists(object_location->ptr))
  return GIT_ENOTFOUND;

 return error;
}
