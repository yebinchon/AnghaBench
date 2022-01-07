
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct dir_rename_entry {char const* dir; TYPE_1__ new_dir; scalar_t__ non_unique_new_dir; } ;


 struct strbuf STRBUF_INIT ;
 int strbuf_addbuf (struct strbuf*,TYPE_1__*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_grow (struct strbuf*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static char *apply_dir_rename(struct dir_rename_entry *entry,
         const char *old_path)
{
 struct strbuf new_path = STRBUF_INIT;
 int oldlen, newlen;

 if (entry->non_unique_new_dir)
  return ((void*)0);

 oldlen = strlen(entry->dir);
 if (entry->new_dir.len == 0)
  oldlen++;
 newlen = entry->new_dir.len + (strlen(old_path) - oldlen) + 1;
 strbuf_grow(&new_path, newlen);
 strbuf_addbuf(&new_path, &entry->new_dir);
 strbuf_addstr(&new_path, &old_path[oldlen]);

 return strbuf_detach(&new_path, ((void*)0));
}
