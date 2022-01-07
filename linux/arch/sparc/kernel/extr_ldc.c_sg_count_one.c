
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {long length; long offset; } ;


 int EFAULT ;
 unsigned long PAGE_SHIFT ;
 unsigned long page_to_pfn (int ) ;
 int pages_in_region (long,long) ;
 int sg_page (struct scatterlist*) ;

__attribute__((used)) static int sg_count_one(struct scatterlist *sg)
{
 unsigned long base = page_to_pfn(sg_page(sg)) << PAGE_SHIFT;
 long len = sg->length;

 if ((sg->offset | len) & (8UL - 1))
  return -EFAULT;

 return pages_in_region(base + sg->offset, len);
}
