
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brd_device {int brd_disk; int brd_list; } ;


 int brd_free (struct brd_device*) ;
 int del_gendisk (int ) ;
 int list_del (int *) ;

__attribute__((used)) static void brd_del_one(struct brd_device *brd)
{
 list_del(&brd->brd_list);
 del_gendisk(brd->brd_disk);
 brd_free(brd);
}
