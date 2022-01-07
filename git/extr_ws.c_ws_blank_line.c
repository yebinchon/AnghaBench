
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char const) ;

int ws_blank_line(const char *line, int len, unsigned ws_rule)
{





 while (len-- > 0) {
  if (!isspace(*line))
   return 0;
  line++;
 }
 return 1;
}
