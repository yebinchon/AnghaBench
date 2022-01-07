
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 unsigned long HPAGE_SIZE ;
 unsigned long REAL_HPAGE_SIZE ;
 unsigned long huge_tte_to_shift (int ) ;

__attribute__((used)) static unsigned long huge_tte_to_size(pte_t pte)
{
 unsigned long size = 1UL << huge_tte_to_shift(pte);

 if (size == REAL_HPAGE_SIZE)
  size = HPAGE_SIZE;
 return size;
}
