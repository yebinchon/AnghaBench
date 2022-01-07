
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FUNC ;
 void* allocate (int,int ) ;
 char* fmt ;
 char* fmtend ;
 char* fp ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void appendstr(char *str) {
 do
  if (fp == fmtend) {
   if (fp) {
    char *s = allocate(2*(fmtend - fmt), FUNC);
    strncpy(s, fmt, fmtend - fmt);
    fp = s + (fmtend - fmt);
    fmtend = s + 2*(fmtend - fmt);
    fmt = s;
   } else {
    fp = fmt = allocate(80, FUNC);
    fmtend = fmt + 80;
   }
  }
 while ((*fp++ = *str++) != 0);
 fp--;
}
