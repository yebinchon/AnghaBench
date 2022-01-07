
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 int read_mailmap_line (struct string_list*,char*,char**) ;
 char* strchrnul (char*,char) ;

__attribute__((used)) static void read_mailmap_string(struct string_list *map, char *buf,
    char **repo_abbrev)
{
 while (*buf) {
  char *end = strchrnul(buf, '\n');

  if (*end)
   *end++ = '\0';

  read_mailmap_line(map, buf, repo_abbrev);
  buf = end;
 }
}
