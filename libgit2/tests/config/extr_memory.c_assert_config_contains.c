
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
typedef TYPE_1__ git_config_entry ;
typedef int git_config_backend ;


 int cl_assert_equal_s (int ,char const*) ;
 int cl_git_pass (int ) ;
 int git_config_backend_get_string (TYPE_1__**,int *,char const*) ;

__attribute__((used)) static void assert_config_contains(git_config_backend *backend,
 const char *name, const char *value)
{
 git_config_entry *entry;
 cl_git_pass(git_config_backend_get_string(&entry, backend, name));
 cl_assert_equal_s(entry->value, value);
}
