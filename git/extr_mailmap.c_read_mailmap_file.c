
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
typedef int buffer ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 scalar_t__ errno ;
 int error_errno (char*,char const*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int read_mailmap_line (struct string_list*,char*,char**) ;

__attribute__((used)) static int read_mailmap_file(struct string_list *map, const char *filename,
        char **repo_abbrev)
{
 char buffer[1024];
 FILE *f;

 if (!filename)
  return 0;

 f = fopen(filename, "r");
 if (!f) {
  if (errno == ENOENT)
   return 0;
  return error_errno("unable to open mailmap at %s", filename);
 }

 while (fgets(buffer, sizeof(buffer), f) != ((void*)0))
  read_mailmap_line(map, buffer, repo_abbrev);
 fclose(f);
 return 0;
}
