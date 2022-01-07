
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 unsigned int HPAGE_16GB_SHIFT ;
 unsigned int HPAGE_256MB_SHIFT ;
 unsigned int HPAGE_2GB_SHIFT ;
 unsigned int HPAGE_64K_SHIFT ;
 unsigned int PAGE_SHIFT ;
 unsigned int REAL_HPAGE_SHIFT ;





 unsigned long _PAGE_SZALL_4V ;
 unsigned long pte_val (int ) ;

__attribute__((used)) static unsigned int sun4v_huge_tte_to_shift(pte_t entry)
{
 unsigned long tte_szbits = pte_val(entry) & _PAGE_SZALL_4V;
 unsigned int shift;

 switch (tte_szbits) {
 case 132:
  shift = HPAGE_16GB_SHIFT;
  break;
 case 130:
  shift = HPAGE_2GB_SHIFT;
  break;
 case 131:
  shift = HPAGE_256MB_SHIFT;
  break;
 case 129:
  shift = REAL_HPAGE_SHIFT;
  break;
 case 128:
  shift = HPAGE_64K_SHIFT;
  break;
 default:
  shift = PAGE_SHIFT;
  break;
 }
 return shift;
}
