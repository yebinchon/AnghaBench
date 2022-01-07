
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int tmp ;


 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static void swap(uint8_t *a, uint8_t *b, size_t elsize)
{
 char tmp[256];

 while (elsize) {
  size_t n = elsize < sizeof(tmp) ? elsize : sizeof(tmp);
  memcpy(tmp, a + elsize - n, n);
  memcpy(a + elsize - n, b + elsize - n, n);
  memcpy(b + elsize - n, tmp, n);
  elsize -= n;
 }
}
