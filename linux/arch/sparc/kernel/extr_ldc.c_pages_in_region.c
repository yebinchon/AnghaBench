
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SIZE ;

__attribute__((used)) static int pages_in_region(unsigned long base, long len)
{
 int count = 0;

 do {
  unsigned long new = (base + PAGE_SIZE) & PAGE_MASK;

  len -= (new - base);
  base = new;
  count++;
 } while (len > 0);

 return count;
}
