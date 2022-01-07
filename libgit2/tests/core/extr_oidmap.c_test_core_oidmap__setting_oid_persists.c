
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_0; } ;
struct TYPE_6__ {TYPE_1__ member_0; } ;
typedef TYPE_2__ git_oid ;


 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int g_map ;
 int git_oidmap_get (int ,TYPE_2__*) ;
 int git_oidmap_set (int ,TYPE_2__*,char*) ;

void test_core_oidmap__setting_oid_persists(void)
{
 git_oid oids[] = {
     {{ 0x01 }},
     {{ 0x02 }},
     {{ 0x03 }}
 };

 cl_git_pass(git_oidmap_set(g_map, &oids[0], "one"));
 cl_git_pass(git_oidmap_set(g_map, &oids[1], "two"));
 cl_git_pass(git_oidmap_set(g_map, &oids[2], "three"));

 cl_assert_equal_s(git_oidmap_get(g_map, &oids[0]), "one");
 cl_assert_equal_s(git_oidmap_get(g_map, &oids[1]), "two");
 cl_assert_equal_s(git_oidmap_get(g_map, &oids[2]), "three");
}
