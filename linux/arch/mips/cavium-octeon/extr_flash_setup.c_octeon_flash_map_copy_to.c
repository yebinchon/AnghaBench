
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;
typedef int ssize_t ;


 int down (int *) ;
 int inline_map_copy_to (struct map_info*,unsigned long,void const*,int ) ;
 int octeon_bootbus_sem ;
 int up (int *) ;

__attribute__((used)) static void octeon_flash_map_copy_to(struct map_info *map, unsigned long to,
         const void *from, ssize_t len)
{
 down(&octeon_bootbus_sem);
 inline_map_copy_to(map, to, from, len);
 up(&octeon_bootbus_sem);
}
