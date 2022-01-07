
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tpm_space {scalar_t__* context_tbl; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int TPM2_HT_TRANSIENT ;

__attribute__((used)) static u32 tpm2_map_to_vhandle(struct tpm_space *space, u32 phandle, bool alloc)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(space->context_tbl); i++) {
  if (alloc) {
   if (!space->context_tbl[i]) {
    space->context_tbl[i] = phandle;
    break;
   }
  } else if (space->context_tbl[i] == phandle)
   break;
 }

 if (i == ARRAY_SIZE(space->context_tbl))
  return 0;

 return TPM2_HT_TRANSIENT | (0xFFFFFF - i);
}
