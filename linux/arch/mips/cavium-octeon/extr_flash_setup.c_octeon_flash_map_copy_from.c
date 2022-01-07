
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;
typedef int ssize_t ;


 int down (int *) ;
 int inline_map_copy_from (struct map_info*,void*,unsigned long,int ) ;
 int octeon_bootbus_sem ;
 int up (int *) ;

__attribute__((used)) static void octeon_flash_map_copy_from(struct map_info *map, void *to,
           unsigned long from, ssize_t len)
{
 down(&octeon_bootbus_sem);
 inline_map_copy_from(map, to, from, len);
 up(&octeon_bootbus_sem);
}
