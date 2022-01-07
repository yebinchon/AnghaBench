
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity_iter {int dummy; } ;
typedef int blk_status_t ;


 int BLK_STS_OK ;

__attribute__((used)) static blk_status_t blk_integrity_nop_fn(struct blk_integrity_iter *iter)
{
 return BLK_STS_OK;
}
