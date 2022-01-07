
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct dir_struct {scalar_t__ ignored_nr; struct dir_entry** ignored; int ignored_alloc; } ;
struct dir_entry {int dummy; } ;


 int ALLOC_GROW (struct dir_entry**,scalar_t__,int ) ;
 struct dir_entry* dir_entry_new (char const*,int) ;
 int index_name_is_other (struct index_state*,char const*,int) ;

struct dir_entry *dir_add_ignored(struct dir_struct *dir,
      struct index_state *istate,
      const char *pathname, int len)
{
 if (!index_name_is_other(istate, pathname, len))
  return ((void*)0);

 ALLOC_GROW(dir->ignored, dir->ignored_nr+1, dir->ignored_alloc);
 return dir->ignored[dir->ignored_nr++] = dir_entry_new(pathname, len);
}
