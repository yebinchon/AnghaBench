
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traverse_info {char* name; size_t namelen; struct traverse_info* prev; int pathlen; } ;


 int BUG (char*) ;
 int memcpy (char*,char const*,size_t) ;
 size_t st_add (int ,size_t) ;

char *make_traverse_path(char *path, size_t pathlen,
    const struct traverse_info *info,
    const char *name, size_t namelen)
{

 size_t pos = st_add(info->pathlen, namelen);

 if (pos >= pathlen)
  BUG("too small buffer passed to make_traverse_path");

 path[pos] = 0;
 for (;;) {
  if (pos < namelen)
   BUG("traverse_info pathlen does not match strings");
  pos -= namelen;
  memcpy(path + pos, name, namelen);

  if (!pos)
   break;
  path[--pos] = '/';

  if (!info)
   BUG("traverse_info ran out of list items");
  name = info->name;
  namelen = info->namelen;
  info = info->prev;
 }
 return path;
}
