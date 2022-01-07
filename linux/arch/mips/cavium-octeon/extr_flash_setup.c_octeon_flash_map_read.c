
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;
typedef int map_word ;


 int down (int *) ;
 int inline_map_read (struct map_info*,unsigned long) ;
 int octeon_bootbus_sem ;
 int up (int *) ;

__attribute__((used)) static map_word octeon_flash_map_read(struct map_info *map, unsigned long ofs)
{
 map_word r;

 down(&octeon_bootbus_sem);
 r = inline_map_read(map, ofs);
 up(&octeon_bootbus_sem);

 return r;
}
