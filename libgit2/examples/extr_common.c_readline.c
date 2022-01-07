
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 scalar_t__ errno ;
 int free (char*) ;
 int getchar () ;
 char* realloc (char*,int) ;

__attribute__((used)) static int readline(char **out)
{
 int c, error = 0, length = 0, allocated = 0;
 char *line = ((void*)0);

 errno = 0;

 while ((c = getchar()) != EOF) {
  if (length == allocated) {
   allocated += 16;

   if ((line = realloc(line, allocated)) == ((void*)0)) {
    error = -1;
    goto error;
   }
  }

  if (c == '\n')
   break;

  line[length++] = c;
 }

 if (errno != 0) {
  error = -1;
  goto error;
 }

 line[length] = '\0';
 *out = line;
 line = ((void*)0);
 error = length;
error:
 free(line);
 return error;
}
