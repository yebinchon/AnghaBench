
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* real_name; char* real_email; } ;
typedef TYPE_1__ git_mailmap_entry ;
typedef int git_mailmap ;


 int assert (int) ;
 TYPE_1__* git_mailmap_entry_lookup (int const*,char const*,char const*) ;

int git_mailmap_resolve(
 const char **real_name, const char **real_email,
 const git_mailmap *mailmap,
 const char *name, const char *email)
{
 const git_mailmap_entry *entry = ((void*)0);
 assert(name && email);

 *real_name = name;
 *real_email = email;

 if ((entry = git_mailmap_entry_lookup(mailmap, name, email))) {
  if (entry->real_name)
   *real_name = entry->real_name;
  if (entry->real_email)
   *real_email = entry->real_email;
 }
 return 0;
}
