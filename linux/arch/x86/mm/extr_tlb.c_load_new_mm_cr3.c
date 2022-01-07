
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int pgd_t ;


 unsigned long build_cr3 (int *,int ) ;
 unsigned long build_cr3_noflush (int *,int ) ;
 int invalidate_user_asid (int ) ;
 int write_cr3 (unsigned long) ;

__attribute__((used)) static void load_new_mm_cr3(pgd_t *pgdir, u16 new_asid, bool need_flush)
{
 unsigned long new_mm_cr3;

 if (need_flush) {
  invalidate_user_asid(new_asid);
  new_mm_cr3 = build_cr3(pgdir, new_asid);
 } else {
  new_mm_cr3 = build_cr3_noflush(pgdir, new_asid);
 }






 write_cr3(new_mm_cr3);
}
