
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traverse_info {int dummy; } ;
struct name_entry {int mode; int pathlen; int path; } ;
struct cache_entry {int dummy; } ;


 scalar_t__ ce_namelen (struct cache_entry const*) ;
 int do_compare_entry (struct cache_entry const*,struct traverse_info const*,int ,int ,int ) ;
 scalar_t__ traverse_path_len (struct traverse_info const*,int ) ;
 int tree_entry_len (struct name_entry const*) ;

__attribute__((used)) static int compare_entry(const struct cache_entry *ce, const struct traverse_info *info, const struct name_entry *n)
{
 int cmp = do_compare_entry(ce, info, n->path, n->pathlen, n->mode);
 if (cmp)
  return cmp;





 return ce_namelen(ce) > traverse_path_len(info, tree_entry_len(n));
}
