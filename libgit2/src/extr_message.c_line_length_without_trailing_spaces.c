
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git__isspace (unsigned char) ;

__attribute__((used)) static size_t line_length_without_trailing_spaces(const char *line, size_t len)
{
 while (len) {
  unsigned char c = line[len - 1];
  if (!git__isspace(c))
   break;
  len--;
 }

 return len;
}
