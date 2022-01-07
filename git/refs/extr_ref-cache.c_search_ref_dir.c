
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_slice {size_t len; char const* str; } ;
struct ref_entry {int dummy; } ;
struct ref_dir {struct ref_entry** entries; int nr; } ;


 struct ref_entry** bsearch (struct string_slice*,struct ref_entry**,int ,int,int ) ;
 int ref_entry_cmp_sslice ;
 int sort_ref_dir (struct ref_dir*) ;

int search_ref_dir(struct ref_dir *dir, const char *refname, size_t len)
{
 struct ref_entry **r;
 struct string_slice key;

 if (refname == ((void*)0) || !dir->nr)
  return -1;

 sort_ref_dir(dir);
 key.len = len;
 key.str = refname;
 r = bsearch(&key, dir->entries, dir->nr, sizeof(*dir->entries),
      ref_entry_cmp_sslice);

 if (r == ((void*)0))
  return -1;

 return r - dir->entries;
}
