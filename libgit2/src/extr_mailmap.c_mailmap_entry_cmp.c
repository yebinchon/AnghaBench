
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * replace_name; int * replace_email; } ;
typedef TYPE_1__ git_mailmap_entry ;


 int assert (int) ;
 int git__strcmp (int *,int *) ;

__attribute__((used)) static int mailmap_entry_cmp(const void *a_raw, const void *b_raw)
{
 const git_mailmap_entry *a = (const git_mailmap_entry *)a_raw;
 const git_mailmap_entry *b = (const git_mailmap_entry *)b_raw;
 int cmp;

 assert(a && b && a->replace_email && b->replace_email);

 cmp = git__strcmp(a->replace_email, b->replace_email);
 if (cmp)
  return cmp;


 if (a->replace_name == ((void*)0) || b->replace_name == ((void*)0))
  return (int)(a->replace_name != ((void*)0)) - (int)(b->replace_name != ((void*)0));

 return git__strcmp(a->replace_name, b->replace_name);
}
