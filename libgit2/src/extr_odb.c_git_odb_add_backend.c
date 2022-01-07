
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb_backend ;
typedef int git_odb ;


 int add_backend_internal (int *,int *,int,int,int ) ;

int git_odb_add_backend(git_odb *odb, git_odb_backend *backend, int priority)
{
 return add_backend_internal(odb, backend, priority, 0, 0);
}
