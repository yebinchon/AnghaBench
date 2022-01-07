
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 unsigned long ALIGN (unsigned long,int ) ;
 int bd_entry_virt_space (struct mm_struct*) ;
 int trace_mpx_unmap_search (unsigned long,unsigned long) ;
 int try_unmap_single_bt (struct mm_struct*,unsigned long,unsigned long) ;

__attribute__((used)) static int mpx_unmap_tables(struct mm_struct *mm,
  unsigned long start, unsigned long end)
{
 unsigned long one_unmap_start;
 trace_mpx_unmap_search(start, end);

 one_unmap_start = start;
 while (one_unmap_start < end) {
  int ret;
  unsigned long next_unmap_start = ALIGN(one_unmap_start+1,
             bd_entry_virt_space(mm));
  unsigned long one_unmap_end = end;





  if (one_unmap_end > next_unmap_start)
   one_unmap_end = next_unmap_start;
  ret = try_unmap_single_bt(mm, one_unmap_start, one_unmap_end);
  if (ret)
   return ret;

  one_unmap_start = next_unmap_start;
 }
 return 0;
}
