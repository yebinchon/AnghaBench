
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk_part_iter {int * part; } ;


 int disk_put_part (int *) ;

void disk_part_iter_exit(struct disk_part_iter *piter)
{
 disk_put_part(piter->part);
 piter->part = ((void*)0);
}
