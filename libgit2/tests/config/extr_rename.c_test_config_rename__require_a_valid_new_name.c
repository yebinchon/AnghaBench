
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_invalid_config_section_name (int ,char*) ;
 int g_repo ;

void test_config_rename__require_a_valid_new_name(void)
{
 assert_invalid_config_section_name(g_repo, "");
 assert_invalid_config_section_name(g_repo, "bra\nch");
 assert_invalid_config_section_name(g_repo, "branc#");
 assert_invalid_config_section_name(g_repo, "bra\nch.duh");
 assert_invalid_config_section_name(g_repo, "branc#.duh");
}
