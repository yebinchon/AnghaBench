
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int name; } ;
typedef TYPE_1__ git_reference ;
typedef int git_object ;


 int GIT_OBJECT_ANY ;
 scalar_t__ GIT_OBJECT_COMMIT ;
 int GIT_REFERENCE_DIRECT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int ,int ) ;
 scalar_t__ git_object_type (int *) ;
 int git_reference_free (TYPE_1__*) ;
 int git_reference_lookup (TYPE_1__**,int ,int ) ;
 int git_reference_target (TYPE_1__*) ;
 int git_reference_type (TYPE_1__*) ;
 int packed_head_name ;
 int reference_is_packed (TYPE_1__*) ;

void test_refs_read__packed(void)
{

 git_reference *reference;
 git_object *object;

 cl_git_pass(git_reference_lookup(&reference, g_repo, packed_head_name));
 cl_assert(git_reference_type(reference) & GIT_REFERENCE_DIRECT);
 cl_assert(reference_is_packed(reference));
 cl_assert_equal_s(reference->name, packed_head_name);

 cl_git_pass(git_object_lookup(&object, g_repo, git_reference_target(reference), GIT_OBJECT_ANY));
 cl_assert(object != ((void*)0));
 cl_assert(git_object_type(object) == GIT_OBJECT_COMMIT);

 git_object_free(object);

 git_reference_free(reference);
}
