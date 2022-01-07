
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;
typedef int map_word ;


 int down (int *) ;
 int inline_map_write (struct map_info*,int const,unsigned long) ;
 int octeon_bootbus_sem ;
 int up (int *) ;

__attribute__((used)) static void octeon_flash_map_write(struct map_info *map, const map_word datum,
       unsigned long ofs)
{
 down(&octeon_bootbus_sem);
 inline_map_write(map, datum, ofs);
 up(&octeon_bootbus_sem);
}
