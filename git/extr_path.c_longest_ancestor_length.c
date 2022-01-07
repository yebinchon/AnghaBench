
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {char* string; } ;


 int strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

int longest_ancestor_length(const char *path, struct string_list *prefixes)
{
 int i, max_len = -1;

 if (!strcmp(path, "/"))
  return -1;

 for (i = 0; i < prefixes->nr; i++) {
  const char *ceil = prefixes->items[i].string;
  int len = strlen(ceil);

  if (len == 1 && ceil[0] == '/')
   len = 0;
  else if (!strncmp(path, ceil, len) && path[len] == '/')
   ;
  else
   continue;

  if (len > max_len)
   max_len = len;
 }

 return max_len;
}
