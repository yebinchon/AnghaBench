
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sb; } ;
struct blk_mq_tags {TYPE_1__ bitmap_tags; } ;


 int sbitmap_any_bit_clear (int *) ;

bool blk_mq_has_free_tags(struct blk_mq_tags *tags)
{
 if (!tags)
  return 1;

 return sbitmap_any_bit_clear(&tags->bitmap_tags.sb);
}
