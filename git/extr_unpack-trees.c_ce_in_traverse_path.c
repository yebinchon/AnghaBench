
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traverse_info {scalar_t__ pathlen; int mode; int namelen; int name; int prev; } ;
struct cache_entry {int dummy; } ;


 scalar_t__ ce_namelen (struct cache_entry const*) ;
 scalar_t__ do_compare_entry (struct cache_entry const*,int ,int ,int ,int ) ;

__attribute__((used)) static int ce_in_traverse_path(const struct cache_entry *ce,
          const struct traverse_info *info)
{
 if (!info->prev)
  return 1;
 if (do_compare_entry(ce, info->prev,
        info->name, info->namelen, info->mode))
  return 0;




 return (info->pathlen < ce_namelen(ce));
}
