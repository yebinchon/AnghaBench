
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int gmap_pmdp_clear (struct mm_struct*,unsigned long,int ) ;

void gmap_pmdp_invalidate(struct mm_struct *mm, unsigned long vmaddr)
{
 gmap_pmdp_clear(mm, vmaddr, 0);
}
