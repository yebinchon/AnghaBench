
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dir_entry {int len; } ;


 int FLEX_ALLOC_MEM (struct dir_entry*,int ,char const*,int) ;
 int name ;

__attribute__((used)) static struct dir_entry *dir_entry_new(const char *pathname, int len)
{
 struct dir_entry *ent;

 FLEX_ALLOC_MEM(ent, name, pathname, len);
 ent->len = len;
 return ent;
}
