
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {scalar_t__ util; } ;
struct string_list {int dummy; } ;
struct oid_array {int dummy; } ;


 struct string_list_item* string_list_insert (struct string_list*,char const*) ;
 scalar_t__ xcalloc (int,int) ;

__attribute__((used)) static struct oid_array *submodule_commits(struct string_list *submodules,
        const char *name)
{
 struct string_list_item *item;

 item = string_list_insert(submodules, name);
 if (item->util)
  return (struct oid_array *) item->util;


 item->util = xcalloc(1, sizeof(struct oid_array));
 return (struct oid_array *) item->util;
}
