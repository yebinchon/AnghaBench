
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;

__attribute__((used)) static int is_blank_line(const char *line, int *len_p)
{
 int len = *len_p;
 while (len && isspace(line[len - 1]))
  len--;
 *len_p = len;
 return !len;
}
