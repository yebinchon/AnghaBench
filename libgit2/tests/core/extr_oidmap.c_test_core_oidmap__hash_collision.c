
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int oid; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int cl_assert (int) ;
 int cl_assert_equal_p (int ,TYPE_1__*) ;
 int cl_git_pass (int ) ;
 int g_map ;
 int git_oidmap_exists (int ,int *) ;
 int git_oidmap_get (int ,int *) ;
 int git_oidmap_set (int ,int *,TYPE_1__*) ;
 TYPE_1__* test_oids ;

void test_core_oidmap__hash_collision(void)
{
 size_t i;

 for (i = 0; i < ARRAY_SIZE(test_oids); ++i) {
  cl_assert(!git_oidmap_exists(g_map, &test_oids[i].oid));
  cl_git_pass(git_oidmap_set(g_map, &test_oids[i].oid, &test_oids[i]));
 }

 for (i = 0; i < ARRAY_SIZE(test_oids); ++i) {
  cl_assert(git_oidmap_exists(g_map, &test_oids[i].oid));
  cl_assert_equal_p(git_oidmap_get(g_map, &test_oids[i].oid), &test_oids[i]);
 }
}
