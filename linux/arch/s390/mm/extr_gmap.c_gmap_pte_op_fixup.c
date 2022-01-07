
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct gmap {struct mm_struct* mm; } ;


 int BUG_ON (int ) ;
 int EFAULT ;
 unsigned int FAULT_FLAG_WRITE ;
 int PROT_WRITE ;
 int __gmap_link (struct gmap*,unsigned long,unsigned long) ;
 int current ;
 scalar_t__ fixup_user_fault (int ,struct mm_struct*,unsigned long,unsigned int,int*) ;
 int gmap_is_shadow (struct gmap*) ;

__attribute__((used)) static int gmap_pte_op_fixup(struct gmap *gmap, unsigned long gaddr,
        unsigned long vmaddr, int prot)
{
 struct mm_struct *mm = gmap->mm;
 unsigned int fault_flags;
 bool unlocked = 0;

 BUG_ON(gmap_is_shadow(gmap));
 fault_flags = (prot == PROT_WRITE) ? FAULT_FLAG_WRITE : 0;
 if (fixup_user_fault(current, mm, vmaddr, fault_flags, &unlocked))
  return -EFAULT;
 if (unlocked)

  return 0;

 return __gmap_link(gmap, gaddr, vmaddr);
}
