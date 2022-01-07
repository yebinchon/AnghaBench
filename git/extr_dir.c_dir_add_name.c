
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct dir_struct {scalar_t__ nr; struct dir_entry** entries; int alloc; } ;
struct dir_entry {int dummy; } ;


 int ALLOC_GROW (struct dir_entry**,scalar_t__,int ) ;
 struct dir_entry* dir_entry_new (char const*,int) ;
 int ignore_case ;
 scalar_t__ index_file_exists (struct index_state*,char const*,int,int ) ;

__attribute__((used)) static struct dir_entry *dir_add_name(struct dir_struct *dir,
          struct index_state *istate,
          const char *pathname, int len)
{
 if (index_file_exists(istate, pathname, len, ignore_case))
  return ((void*)0);

 ALLOC_GROW(dir->entries, dir->nr+1, dir->alloc);
 return dir->entries[dir->nr++] = dir_entry_new(pathname, len);
}
