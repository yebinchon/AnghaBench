
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _repo ;
 int assert_config_entry_on_init_bytype (char const*,int,int) ;
 int git_repository_free (int ) ;

__attribute__((used)) static void assert_config_entry_on_init(
 const char *config_key, int expected_value)
{
 assert_config_entry_on_init_bytype(config_key, expected_value, 1);
 git_repository_free(_repo);

 assert_config_entry_on_init_bytype(config_key, expected_value, 0);
}
