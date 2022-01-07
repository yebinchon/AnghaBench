
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t strip_cr_from_buf(char *start, size_t len)
{
 char *scan, *trail, *end = start + len;

 for (scan = trail = start; scan < end; trail++, scan++) {
  while (*scan == '\r')
   scan++;

  if (trail != scan)
   *trail = *scan;
 }

 *trail = '\0';

 return (trail - start);
}
