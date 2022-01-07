
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {scalar_t__ util; } ;
struct string_list {scalar_t__ nr; } ;
struct mailmap_info {char* name; char* email; } ;
struct mailmap_entry {struct string_list namemap; } ;


 int debug_mm (char*,...) ;
 int debug_str (char const*) ;
 struct string_list_item* lookup_prefix (struct string_list*,char const*,size_t) ;
 size_t strlen (char const*) ;

int map_user(struct string_list *map,
      const char **email, size_t *emaillen,
      const char **name, size_t *namelen)
{
 struct string_list_item *item;
 struct mailmap_entry *me;

 debug_mm("map_user: map '%.*s' <%.*s>\n",
   (int)*namelen, debug_str(*name),
   (int)*emaillen, debug_str(*email));

 item = lookup_prefix(map, *email, *emaillen);
 if (item != ((void*)0)) {
  me = (struct mailmap_entry *)item->util;
  if (me->namemap.nr) {





   struct string_list_item *subitem;
   subitem = lookup_prefix(&me->namemap, *name, *namelen);
   if (subitem)
    item = subitem;
  }
 }
 if (item != ((void*)0)) {
  struct mailmap_info *mi = (struct mailmap_info *)item->util;
  if (mi->name == ((void*)0) && mi->email == ((void*)0)) {
   debug_mm("map_user:  -- (no simple mapping)\n");
   return 0;
  }
  if (mi->email) {
    *email = mi->email;
    *emaillen = strlen(*email);
  }
  if (mi->name) {
    *name = mi->name;
    *namelen = strlen(*name);
  }
  debug_mm("map_user:  to '%.*s' <%.*s>\n",
    (int)*namelen, debug_str(*name),
    (int)*emaillen, debug_str(*email));
  return 1;
 }
 debug_mm("map_user:  --\n");
 return 0;
}
