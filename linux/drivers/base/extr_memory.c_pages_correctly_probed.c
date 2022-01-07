
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PAGES_PER_SECTION ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ online_section_nr (unsigned long) ;
 unsigned long pfn_to_section_nr (unsigned long) ;
 int pfn_valid (unsigned long) ;
 int pr_warn (char*,unsigned long,unsigned long,scalar_t__) ;
 int present_section_nr (unsigned long) ;
 unsigned long sections_per_block ;
 int valid_section_nr (unsigned long) ;

__attribute__((used)) static bool pages_correctly_probed(unsigned long start_pfn)
{
 unsigned long section_nr = pfn_to_section_nr(start_pfn);
 unsigned long section_nr_end = section_nr + sections_per_block;
 unsigned long pfn = start_pfn;






 for (; section_nr < section_nr_end; section_nr++) {
  if (WARN_ON_ONCE(!pfn_valid(pfn)))
   return 0;

  if (!present_section_nr(section_nr)) {
   pr_warn("section %ld pfn[%lx, %lx) not present\n",
    section_nr, pfn, pfn + PAGES_PER_SECTION);
   return 0;
  } else if (!valid_section_nr(section_nr)) {
   pr_warn("section %ld pfn[%lx, %lx) no valid memmap\n",
    section_nr, pfn, pfn + PAGES_PER_SECTION);
   return 0;
  } else if (online_section_nr(section_nr)) {
   pr_warn("section %ld pfn[%lx, %lx) is already online\n",
    section_nr, pfn, pfn + PAGES_PER_SECTION);
   return 0;
  }
  pfn += PAGES_PER_SECTION;
 }

 return 1;
}
