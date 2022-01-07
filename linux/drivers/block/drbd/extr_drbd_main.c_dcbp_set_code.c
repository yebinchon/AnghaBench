
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p_compressed_bm {int encoding; } ;
typedef enum drbd_bitmap_code { ____Placeholder_drbd_bitmap_code } drbd_bitmap_code ;


 int BUG_ON (int) ;

__attribute__((used)) static void dcbp_set_code(struct p_compressed_bm *p, enum drbd_bitmap_code code)
{
 BUG_ON(code & ~0xf);
 p->encoding = (p->encoding & ~0xf) | code;
}
