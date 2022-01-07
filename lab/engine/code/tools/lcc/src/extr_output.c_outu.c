
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* outs (char*,int *,char*) ;

__attribute__((used)) static char *outu(unsigned long n, int base, FILE *f, char *bp) {
 char buf[25], *s = buf + sizeof buf;

 *--s = '\0';
 do
  *--s = "0123456789abcdef"[n%base];
 while ((n /= base) != 0);
 return outs(s, f, bp);
}
