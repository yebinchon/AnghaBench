
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static const u32 *__cie_for_fde(const u32 *fde)
{
 const u32 *cie;

 cie = fde + 1 - fde[1] / sizeof(*fde);

 return cie;
}
