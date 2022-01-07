
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ git__isspace (char) ;

__attribute__((used)) static int strip_comments(char *line, int in_quotes)
{
 int quote_count = in_quotes, backslash_count = 0;
 char *ptr;

 for (ptr = line; *ptr; ++ptr) {
  if (ptr[0] == '"' && ptr > line && ptr[-1] != '\\')
   quote_count++;

  if ((ptr[0] == ';' || ptr[0] == '#') &&
   (quote_count % 2) == 0 &&
   (backslash_count % 2) == 0) {
   ptr[0] = '\0';
   break;
  }

  if (ptr[0] == '\\')
   backslash_count++;
  else
   backslash_count = 0;
 }


 while (ptr > line && git__isspace(ptr[-1])) {
  ptr--;
 }
 ptr[0] = '\0';

 return quote_count;
}
