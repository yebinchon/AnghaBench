
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity {int flags; } ;
typedef int ssize_t ;


 int BLK_INTEGRITY_DEVICE_CAPABLE ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t integrity_device_show(struct blk_integrity *bi, char *page)
{
 return sprintf(page, "%u\n",
         (bi->flags & BLK_INTEGRITY_DEVICE_CAPABLE) != 0);
}
