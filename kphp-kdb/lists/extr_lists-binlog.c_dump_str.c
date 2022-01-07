
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputc (char,int *) ;

void dump_str(FILE* f, char *s, int len) {
  int i;
  for(i=0;i<len;++i) fputc(s[i], f);
}
