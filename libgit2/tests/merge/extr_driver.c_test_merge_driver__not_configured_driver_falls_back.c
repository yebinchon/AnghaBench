
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ git_index_entry ;


 int automergeable_id ;
 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_oid (int *,int *) ;
 TYPE_1__* git_index_get_bypath (int ,char*,int ) ;
 int merge_branch () ;
 int repo_index ;
 int set_gitattributes_to (char*) ;
 int test_drivers_register () ;
 int test_drivers_unregister () ;

void test_merge_driver__not_configured_driver_falls_back(void)
{
 const git_index_entry *idx;

 test_drivers_unregister();


 set_gitattributes_to("notfound");

 merge_branch();

 cl_assert((idx = git_index_get_bypath(repo_index, "automergeable.txt", 0)));
 cl_assert_equal_oid(&automergeable_id, &idx->id);

 test_drivers_register();
}
