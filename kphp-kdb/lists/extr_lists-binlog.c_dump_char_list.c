
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,int) ;
 int fputc (char,int *) ;

void dump_char_list(FILE* f, char *s, int len) {
  int i;

  for(i=0;i<len;++i) {
    if (i > 0) fputc(':', f);
    fprintf(f, "%d",(int) s[i]);
  }

}
