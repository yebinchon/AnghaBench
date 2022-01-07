
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct bio {int dummy; } ;


 int __bio_add_page (struct bio*,struct page*,unsigned int,unsigned int) ;
 int __bio_try_merge_page (struct bio*,struct page*,unsigned int,unsigned int,int*) ;
 scalar_t__ bio_full (struct bio*,unsigned int) ;

int bio_add_page(struct bio *bio, struct page *page,
   unsigned int len, unsigned int offset)
{
 bool same_page = 0;

 if (!__bio_try_merge_page(bio, page, len, offset, &same_page)) {
  if (bio_full(bio, len))
   return 0;
  __bio_add_page(bio, page, len, offset);
 }
 return len;
}
