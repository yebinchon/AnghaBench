
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expected_entry {int seen; scalar_t__ name; } ;
typedef int git_config_backend ;


 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int contains_all_cb ;
 int git_config_backend_foreach (int *,int ,struct expected_entry*) ;

__attribute__((used)) static void assert_config_contains_all(git_config_backend *backend,
 struct expected_entry *entries)
{
 int i;

 cl_git_pass(git_config_backend_foreach(backend, contains_all_cb, entries));

 for (i = 0; entries[i].name; i++)
  cl_assert(entries[i].seen);
}
