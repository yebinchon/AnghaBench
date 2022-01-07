
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec_item {scalar_t__ nowildcard_len; scalar_t__ len; scalar_t__ prefix; int magic; void* match; void* original; } ;
struct pathspec {int magic; int nr; int has_wildcard; struct pathspec_item* items; } ;


 int ALLOC_ARRAY (struct pathspec_item*,int) ;
 int BUG (char*) ;
 int PATHSPEC_EXCLUDE ;
 unsigned int PATHSPEC_KEEP_ORDER ;
 int PATHSPEC_MAXDEPTH ;
 unsigned int PATHSPEC_MAXDEPTH_VALID ;
 unsigned int PATHSPEC_PREFER_CWD ;
 unsigned int PATHSPEC_PREFER_FULL ;
 unsigned int PATHSPEC_SYMLINK_LEADING_PATH ;
 int QSORT (struct pathspec_item*,int,int ) ;
 int _ (char*) ;
 int die (char*,...) ;
 scalar_t__ has_symlink_leading_path (void*,scalar_t__) ;
 int init_pathspec_item (struct pathspec_item*,unsigned int,char const*,int,char const*) ;
 int memset (struct pathspec*,int ,int) ;
 int pathspec_item_cmp ;
 void* strlen (char const*) ;
 int unsupported_magic (char const*,unsigned int) ;
 struct pathspec_item* xcalloc (int,int) ;
 void* xstrdup (char const*) ;

void parse_pathspec(struct pathspec *pathspec,
      unsigned magic_mask, unsigned flags,
      const char *prefix, const char **argv)
{
 struct pathspec_item *item;
 const char *entry = argv ? *argv : ((void*)0);
 int i, n, prefixlen, nr_exclude = 0;

 memset(pathspec, 0, sizeof(*pathspec));

 if (flags & PATHSPEC_MAXDEPTH_VALID)
  pathspec->magic |= PATHSPEC_MAXDEPTH;


 if (!entry && !prefix)
  return;

 if ((flags & PATHSPEC_PREFER_CWD) &&
     (flags & PATHSPEC_PREFER_FULL))
  BUG("PATHSPEC_PREFER_CWD and PATHSPEC_PREFER_FULL are incompatible");


 if (!entry) {
  if (flags & PATHSPEC_PREFER_FULL)
   return;

  if (!(flags & PATHSPEC_PREFER_CWD))
   BUG("PATHSPEC_PREFER_CWD requires arguments");

  pathspec->items = item = xcalloc(1, sizeof(*item));
  item->match = xstrdup(prefix);
  item->original = xstrdup(prefix);
  item->nowildcard_len = item->len = strlen(prefix);
  item->prefix = item->len;
  pathspec->nr = 1;
  return;
 }

 n = 0;
 while (argv[n]) {
  if (*argv[n] == '\0')
   die("empty string is not a valid pathspec. "
      "please use . instead if you meant to match all paths");
  n++;
 }

 pathspec->nr = n;
 ALLOC_ARRAY(pathspec->items, n + 1);
 item = pathspec->items;
 prefixlen = prefix ? strlen(prefix) : 0;

 for (i = 0; i < n; i++) {
  entry = argv[i];

  init_pathspec_item(item + i, flags, prefix, prefixlen, entry);

  if (item[i].magic & PATHSPEC_EXCLUDE)
   nr_exclude++;
  if (item[i].magic & magic_mask)
   unsupported_magic(entry, item[i].magic & magic_mask);

  if ((flags & PATHSPEC_SYMLINK_LEADING_PATH) &&
      has_symlink_leading_path(item[i].match, item[i].len)) {
   die(_("pathspec '%s' is beyond a symbolic link"), entry);
  }

  if (item[i].nowildcard_len < item[i].len)
   pathspec->has_wildcard = 1;
  pathspec->magic |= item[i].magic;
 }





 if (nr_exclude == n) {
  int plen = (!(flags & PATHSPEC_PREFER_CWD)) ? 0 : prefixlen;
  init_pathspec_item(item + n, 0, prefix, plen, "");
  pathspec->nr++;
 }

 if (pathspec->magic & PATHSPEC_MAXDEPTH) {
  if (flags & PATHSPEC_KEEP_ORDER)
   BUG("PATHSPEC_MAXDEPTH_VALID and PATHSPEC_KEEP_ORDER are incompatible");
  QSORT(pathspec->items, pathspec->nr, pathspec_item_cmp);
 }
}
