
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int git_tag ;
struct TYPE_11__ {int name; } ;
typedef TYPE_1__ git_reference ;
typedef int git_object ;
struct TYPE_12__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_OBJECT_ANY ;
 scalar_t__ GIT_OBJECT_TAG ;
 int GIT_REFERENCE_DIRECT ;
 int GIT_REFS_TAGS_DIR ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,int ) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int ,int ) ;
 scalar_t__ git_object_type (int *) ;
 int git_reference_free (TYPE_1__*) ;
 int git_reference_lookup (TYPE_1__**,int ,int ) ;
 int git_reference_target (TYPE_1__*) ;
 int git_reference_type (TYPE_1__*) ;
 int git_tag_name (int *) ;
 int loose_tag_ref_name ;
 scalar_t__ reference_is_packed (TYPE_1__*) ;

void test_refs_read__loose_tag(void)
{

 git_reference *reference;
 git_object *object;
 git_buf ref_name_from_tag_name = GIT_BUF_INIT;

 cl_git_pass(git_reference_lookup(&reference, g_repo, loose_tag_ref_name));
 cl_assert(git_reference_type(reference) & GIT_REFERENCE_DIRECT);
 cl_assert(reference_is_packed(reference) == 0);
 cl_assert_equal_s(reference->name, loose_tag_ref_name);

 cl_git_pass(git_object_lookup(&object, g_repo, git_reference_target(reference), GIT_OBJECT_ANY));
 cl_assert(object != ((void*)0));
 cl_assert(git_object_type(object) == GIT_OBJECT_TAG);


 cl_git_pass(git_buf_joinpath(&ref_name_from_tag_name, GIT_REFS_TAGS_DIR, git_tag_name((git_tag *)object)));
 cl_assert_equal_s(ref_name_from_tag_name.ptr, loose_tag_ref_name);
 git_buf_dispose(&ref_name_from_tag_name);

 git_object_free(object);

 git_reference_free(reference);
}
