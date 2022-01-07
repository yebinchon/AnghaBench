
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct dir_entry {scalar_t__ nr; } ;


 struct dir_entry* find_dir_entry (struct index_state*,char const*,int) ;
 int lazy_init_name_hash (struct index_state*) ;

int index_dir_exists(struct index_state *istate, const char *name, int namelen)
{
 struct dir_entry *dir;

 lazy_init_name_hash(istate);
 dir = find_dir_entry(istate, name, namelen);
 return dir && dir->nr;
}
