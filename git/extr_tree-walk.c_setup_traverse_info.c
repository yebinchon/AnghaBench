
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traverse_info {size_t pathlen; char const* name; size_t namelen; struct traverse_info* prev; } ;


 int memset (struct traverse_info*,int ,int) ;
 size_t strlen (char const*) ;

void setup_traverse_info(struct traverse_info *info, const char *base)
{
 size_t pathlen = strlen(base);
 static struct traverse_info dummy;

 memset(info, 0, sizeof(*info));
 if (pathlen && base[pathlen-1] == '/')
  pathlen--;
 info->pathlen = pathlen ? pathlen + 1 : 0;
 info->name = base;
 info->namelen = pathlen;
 if (pathlen)
  info->prev = &dummy;
}
