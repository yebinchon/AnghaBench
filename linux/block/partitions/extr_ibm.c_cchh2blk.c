
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtoc_cchh {int hh; int cc; } ;
struct hd_geometry {int heads; int sectors; } ;
typedef int sector_t ;
typedef int __u16 ;



__attribute__((used)) static sector_t cchh2blk(struct vtoc_cchh *ptr, struct hd_geometry *geo)
{
 sector_t cyl;
 __u16 head;


 cyl = ptr->hh & 0xFFF0;
 cyl <<= 12;
 cyl |= ptr->cc;
 head = ptr->hh & 0x000F;
 return cyl * geo->heads * geo->sectors +
        head * geo->sectors;
}
