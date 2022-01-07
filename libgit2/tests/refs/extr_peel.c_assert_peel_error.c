
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_object_t ;
typedef int git_object ;


 int cl_assert_equal_i (int,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char const*) ;
 int git_reference_peel (int **,int *,int ) ;

__attribute__((used)) static void assert_peel_error(int error, const char *ref_name, git_object_t requested_type)
{
 git_reference *ref;
 git_object *peeled;

 cl_git_pass(git_reference_lookup(&ref, g_repo, ref_name));

 cl_assert_equal_i(error, git_reference_peel(&peeled, ref, requested_type));

 git_reference_free(ref);
}
