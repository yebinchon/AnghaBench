
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
typedef unsigned long ulong ;



__attribute__((used)) static unsigned long scan_sync(unsigned long raw, unsigned long end)
{
 ushort *ptr = (ushort *)raw, *endp = (ushort *)end;

 while (ptr < endp && *ptr++ != 0x4489)
  ;
 if (ptr < endp) {
  while (*ptr == 0x4489 && ptr < endp)
   ptr++;
  return (ulong)ptr;
 }
 return 0;
}
