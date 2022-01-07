
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_odb_backend ;
typedef int git_odb ;
struct TYPE_2__ {int position; } ;
typedef TYPE_1__ fake_backend ;


 int cl_assert (int ) ;
 int cl_assert_equal_sz (size_t,int ) ;
 int cl_git_pass (int ) ;
 int git_odb_get_backend (int **,int *,size_t) ;
 size_t git_odb_num_backends (int *) ;

__attribute__((used)) static void check_backend_sorting(git_odb *odb)
{
 size_t i, max_i = git_odb_num_backends(odb);
 fake_backend *internal;

 for (i = 0; i < max_i; ++i) {
  cl_git_pass(git_odb_get_backend((git_odb_backend **)&internal, odb, i));
  cl_assert(internal != ((void*)0));
  cl_assert_equal_sz(i, internal->position);
 }
}
