
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int MAXTOKEN ;
 int fp ;
 int getc (int ) ;
 char* string (char*) ;

__attribute__((used)) static char *getstr(void) {
 int c;
 char buf[MAXTOKEN], *s = buf;

 while ((c = getc(fp)) != EOF && c != ' ' && c != '\n' && c != '\t')
  if (s - buf < (int)sizeof buf - 2)
   *s++ = c;
 *s = 0;
 return s == buf ? (char *)0 : string(buf);
}
