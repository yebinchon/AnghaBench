
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
typedef int git_commit ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int O_CREAT ;
 int O_RDWR ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_write2file (char*,char*,int ,int,int) ;
 int cl_must_pass (int ) ;
 int git_checkout_tree (int ,int const*,TYPE_1__*) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_path_exists (char*) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int p_rename (char*,char*) ;
 int repo ;

void test_checkout_nasty__only_looks_like_a_git_shortname(void)
{
}
