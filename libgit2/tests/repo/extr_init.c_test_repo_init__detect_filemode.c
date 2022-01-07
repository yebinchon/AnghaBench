
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_config_entry_on_init (char*,int ) ;
 int cl_is_chmod_supported () ;

void test_repo_init__detect_filemode(void)
{
 assert_config_entry_on_init("core.filemode", cl_is_chmod_supported());
}
