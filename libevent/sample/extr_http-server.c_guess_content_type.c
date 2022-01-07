
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_entry {char const* content_type; scalar_t__ extension; } ;


 struct table_entry* content_type_table ;
 int evutil_ascii_strcasecmp (scalar_t__,char const*) ;
 scalar_t__ strchr (char const*,char) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static const char *
guess_content_type(const char *path)
{
 const char *last_period, *extension;
 const struct table_entry *ent;
 last_period = strrchr(path, '.');
 if (!last_period || strchr(last_period, '/'))
  goto not_found;
 extension = last_period + 1;
 for (ent = &content_type_table[0]; ent->extension; ++ent) {
  if (!evutil_ascii_strcasecmp(ent->extension, extension))
   return ent->content_type;
 }

not_found:
 return "application/misc";
}
