
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int real_email; int real_name; int replace_email; int replace_name; } ;
typedef TYPE_1__ mailmap_entry ;
typedef int git_mailmap ;


 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_mailmap_resolve (char const**,char const**,int const*,int ,int ) ;

__attribute__((used)) static void check_mailmap_resolve(
 const git_mailmap *mailmap, const mailmap_entry *resolved, size_t resolved_size)
{
 const char *resolved_name = ((void*)0);
 const char *resolved_email = ((void*)0);
 size_t idx;


 for (idx = 0; idx < resolved_size; ++idx) {
  cl_git_pass(git_mailmap_resolve(
   &resolved_name, &resolved_email, mailmap,
   resolved[idx].replace_name, resolved[idx].replace_email));
  cl_assert_equal_s(resolved_name, resolved[idx].real_name);
  cl_assert_equal_s(resolved_email, resolved[idx].real_email);
 }
}
