
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traverse_info {char* name; size_t namelen; unsigned int mode; int pathlen; struct traverse_info* prev; } ;
struct cache_entry {char* name; } ;


 int S_IFREG ;
 int ce_namelen (struct cache_entry const*) ;
 int df_name_compare (char const*,int,int ,char const*,size_t,unsigned int) ;

__attribute__((used)) static int do_compare_entry_piecewise(const struct cache_entry *ce,
          const struct traverse_info *info,
          const char *name, size_t namelen,
          unsigned mode)
{
 int pathlen, ce_len;
 const char *ce_name;

 if (info->prev) {
  int cmp = do_compare_entry_piecewise(ce, info->prev,
           info->name, info->namelen,
           info->mode);
  if (cmp)
   return cmp;
 }
 pathlen = info->pathlen;
 ce_len = ce_namelen(ce);


 if (ce_len < pathlen)
  return -1;

 ce_len -= pathlen;
 ce_name = ce->name + pathlen;

 return df_name_compare(ce_name, ce_len, S_IFREG, name, namelen, mode);
}
