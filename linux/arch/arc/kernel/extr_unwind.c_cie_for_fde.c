
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct unwind_table {int dummy; } ;


 int const CIE_ID ;
 int* __cie_for_fde (int const*) ;
 int const bad_cie ;
 int const not_fde ;

__attribute__((used)) static const u32 *cie_for_fde(const u32 *fde, const struct unwind_table *table)
{
 const u32 *cie;

 if (!*fde || (*fde & (sizeof(*fde) - 1)))
  return &bad_cie;

 if (fde[1] == CIE_ID)
  return &not_fde;

 if ((fde[1] & (sizeof(*fde) - 1)))

  return ((void*)0);

 cie = __cie_for_fde(fde);

 if (*cie <= sizeof(*cie) + 4 || *cie >= fde[1] - sizeof(*fde)
     || (*cie & (sizeof(*cie) - 1))
     || (cie[1] != CIE_ID))
  return ((void*)0);
 return cie;
}
