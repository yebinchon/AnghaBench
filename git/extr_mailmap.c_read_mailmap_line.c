
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
typedef int abbrev ;


 int add_mapping (struct string_list*,char*,char*,char*,char*) ;
 int free (char*) ;
 scalar_t__ isspace (char) ;
 char* parse_name_and_email (char*,char**,char**,int) ;
 int strlen (char*) ;
 int strncmp (char*,char const*,int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void read_mailmap_line(struct string_list *map, char *buffer,
         char **repo_abbrev)
{
 char *name1 = ((void*)0), *email1 = ((void*)0), *name2 = ((void*)0), *email2 = ((void*)0);
 if (buffer[0] == '#') {
  static const char abbrev[] = "# repo-abbrev:";
  int abblen = sizeof(abbrev) - 1;
  int len = strlen(buffer);

  if (!repo_abbrev)
   return;

  if (len && buffer[len - 1] == '\n')
   buffer[--len] = 0;
  if (!strncmp(buffer, abbrev, abblen)) {
   char *cp;

   free(*repo_abbrev);

   for (cp = buffer + abblen; isspace(*cp); cp++)
    ;
   *repo_abbrev = xstrdup(cp);
  }
  return;
 }
 if ((name2 = parse_name_and_email(buffer, &name1, &email1, 0)) != ((void*)0))
  parse_name_and_email(name2, &name2, &email2, 1);

 if (email1)
  add_mapping(map, name1, email1, name2, email2);
}
