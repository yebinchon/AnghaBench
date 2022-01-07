
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int oid; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int cl_assert_equal_p (int ,int *) ;
 int cl_git_pass (int ) ;
 int g_map ;
 int git_oidmap_get (int ,int *) ;
 int git_oidmap_set (int ,int *,TYPE_1__*) ;
 TYPE_1__* test_oids ;

void test_core_oidmap__get_fails_with_nonexisting_key(void)
{
 size_t i;


 for (i = 0; i < ARRAY_SIZE(test_oids) - 1; ++i)
  cl_git_pass(git_oidmap_set(g_map, &test_oids[i].oid, &test_oids[i]));

 cl_assert_equal_p(git_oidmap_get(g_map, &test_oids[ARRAY_SIZE(test_oids) - 1].oid), ((void*)0));
}
