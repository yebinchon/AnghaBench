
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLANK ;
 int EOI ;
 int NEWLINE ;
 size_t* cp ;
 size_t* limit ;
 int* map ;
 int nextline () ;

int getchr(void) {
 for (;;) {
  while (map[*cp]&BLANK)
   cp++;
  if (!(map[*cp]&NEWLINE))
   return *cp;
  cp++;
  nextline();
  if (cp == limit)
   return EOI;
 }
}
