
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sector_t ;



__attribute__((used)) static bool has_overlaps(sector_t from, sector_t size,
    sector_t from2, sector_t size2)
{
 sector_t end = from + size;
 sector_t end2 = from2 + size2;

 if (from >= from2 && from < end2)
  return 1;

 if (end > from2 && end <= end2)
  return 1;

 if (from2 >= from && from2 < end)
  return 1;

 if (end2 > from && end2 <= end)
  return 1;

 return 0;
}
