
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct dir_entry {struct dir_entry* parent; int nr; } ;
struct cache_entry {int dummy; } ;


 int ce_namelen (struct cache_entry*) ;
 struct dir_entry* hash_dir_entry (struct index_state*,struct cache_entry*,int ) ;

__attribute__((used)) static void add_dir_entry(struct index_state *istate, struct cache_entry *ce)
{

 struct dir_entry *dir = hash_dir_entry(istate, ce, ce_namelen(ce));
 while (dir && !(dir->nr++))
  dir = dir->parent;
}
