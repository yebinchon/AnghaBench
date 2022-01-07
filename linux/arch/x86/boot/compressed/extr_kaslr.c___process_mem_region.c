
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_vector {unsigned long start; unsigned long size; } ;


 unsigned long ALIGN (unsigned long,int ) ;
 int CONFIG_PHYSICAL_ALIGN ;
 int CONFIG_X86_32 ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned long KERNEL_IMAGE_SIZE ;
 scalar_t__ MAX_SLOT_AREA ;
 int mem_avoid_overlap (struct mem_vector*,struct mem_vector*) ;
 int mem_limit ;
 unsigned long min (unsigned long,int ) ;
 int process_gb_huge_pages (struct mem_vector*,unsigned long) ;
 scalar_t__ slot_area_index ;

__attribute__((used)) static void __process_mem_region(struct mem_vector *entry,
     unsigned long minimum,
     unsigned long image_size)
{
 struct mem_vector region, overlap;
 unsigned long start_orig, end;
 struct mem_vector cur_entry;


 if (IS_ENABLED(CONFIG_X86_32) && entry->start >= KERNEL_IMAGE_SIZE)
  return;


 if (entry->start + entry->size < minimum)
  return;


 end = min(entry->size + entry->start, mem_limit);
 if (entry->start >= end)
  return;
 cur_entry.start = entry->start;
 cur_entry.size = end - entry->start;

 region.start = cur_entry.start;
 region.size = cur_entry.size;


 while (slot_area_index < MAX_SLOT_AREA) {
  start_orig = region.start;


  if (region.start < minimum)
   region.start = minimum;


  region.start = ALIGN(region.start, CONFIG_PHYSICAL_ALIGN);


  if (region.start > cur_entry.start + cur_entry.size)
   return;


  region.size -= region.start - start_orig;


  if (IS_ENABLED(CONFIG_X86_32) &&
      region.start + region.size > KERNEL_IMAGE_SIZE)
   region.size = KERNEL_IMAGE_SIZE - region.start;


  if (region.size < image_size)
   return;


  if (!mem_avoid_overlap(&region, &overlap)) {
   process_gb_huge_pages(&region, image_size);
   return;
  }


  if (overlap.start > region.start + image_size) {
   struct mem_vector beginning;

   beginning.start = region.start;
   beginning.size = overlap.start - region.start;
   process_gb_huge_pages(&beginning, image_size);
  }


  if (overlap.start + overlap.size >= region.start + region.size)
   return;


  region.size -= overlap.start - region.start + overlap.size;
  region.start = overlap.start + overlap.size;
 }
}
