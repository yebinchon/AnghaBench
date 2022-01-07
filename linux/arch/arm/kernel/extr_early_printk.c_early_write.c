
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int memcpy (char*,char const*,unsigned int) ;
 unsigned int min (unsigned int,int) ;
 int printascii (char*) ;

__attribute__((used)) static void early_write(const char *s, unsigned n)
{
 char buf[128];
 while (n) {
  unsigned l = min(n, sizeof(buf)-1);
  memcpy(buf, s, l);
  buf[l] = 0;
  s += l;
  n -= l;
  printascii(buf);
 }
}
