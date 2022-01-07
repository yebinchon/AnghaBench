
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_mailmap ;


 int mailmap_add_entry_unterminated (int *,char const*,int ,char const*,int ,char const*,int ,char const*,int ) ;
 int strlen (char const*) ;

int git_mailmap_add_entry(
 git_mailmap *mm, const char *real_name, const char *real_email,
 const char *replace_name, const char *replace_email)
{
 return mailmap_add_entry_unterminated(
  mm,
  real_name, real_name ? strlen(real_name) : 0,
  real_email, real_email ? strlen(real_email) : 0,
  replace_name, replace_name ? strlen(replace_name) : 0,
  replace_email, strlen(replace_email));
}
