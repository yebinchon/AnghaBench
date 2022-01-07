
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int fp ;
 int getc (int ) ;

__attribute__((used)) static int getd(void) {
 int c, n = 0;

 while ((c = getc(fp)) != EOF && (c == ' ' || c == '\n' || c == '\t'))
  ;
 if (c >= '0' && c <= '9') {
  do
   n = 10*n + (c - '0');
  while ((c = getc(fp)) >= '0' && c <= '9');
  return n;
 }
 return -1;
}
