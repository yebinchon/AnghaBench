
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int name; } ;
typedef TYPE_1__ git_reference ;
typedef int git_oid ;


 int cl_assert_equal_oid (int *,int ) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_oid_cpy (int *,int ) ;
 int git_reference_free (TYPE_1__*) ;
 int git_reference_lookup (TYPE_1__**,int ,char*) ;
 int git_reference_rename (TYPE_1__**,TYPE_1__*,char*,int,int *) ;
 int git_reference_target (TYPE_1__*) ;

void test_refs_rename__force_loose(void)
{

 git_reference *looked_up_ref, *renamed_ref;
 git_oid oid;


 cl_git_pass(git_reference_lookup(&looked_up_ref, g_repo, "refs/heads/br2"));
 git_oid_cpy(&oid, git_reference_target(looked_up_ref));


 cl_git_pass(git_reference_rename(&renamed_ref, looked_up_ref, "refs/heads/test", 1, ((void*)0)));
 git_reference_free(looked_up_ref);
 git_reference_free(renamed_ref);


 cl_git_pass(git_reference_lookup(&looked_up_ref, g_repo, "refs/heads/test"));
 cl_assert_equal_s(looked_up_ref->name, "refs/heads/test");
 cl_assert_equal_oid(&oid, git_reference_target(looked_up_ref));
 git_reference_free(looked_up_ref);


 cl_git_fail(git_reference_lookup(&looked_up_ref, g_repo, "refs/heads/br2"));

 git_reference_free(looked_up_ref);
}
