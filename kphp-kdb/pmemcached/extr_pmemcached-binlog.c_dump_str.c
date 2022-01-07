
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputc (char const,int ) ;
 int stdout ;

void dump_str (const char *s, int len) {
  int i;
  for (i = 0; i < len; i++) { fputc (s[i], stdout); }
}
