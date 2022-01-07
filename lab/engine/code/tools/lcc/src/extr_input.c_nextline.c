
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cp ;
 int fillbuf () ;
 char* limit ;
 char* line ;
 int lineno ;
 int resynch () ;

void nextline(void) {
 do {
  if (cp >= limit) {
   fillbuf();
   if (cp >= limit)
    cp = limit;
   if (cp == limit)
    return;
  } else {
   lineno++;
   for (line = (char *)cp; *cp==' ' || *cp=='\t'; cp++)
    ;
   if (*cp == '#') {
    resynch();
    nextline();
   }
  }
 } while (*cp == '\n' && cp == limit);
}
