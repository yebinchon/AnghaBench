
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;
struct tpm_space {int dummy; } ;
struct tpm_chip {unsigned int* cc_attrs_tbl; struct tpm_space work_space; } ;
typedef int __be32 ;


 int EINVAL ;
 unsigned int GENMASK (int,int ) ;
 unsigned int TPM2_CC_ATTR_CHANDLES ;
 int TPM2_HT_TRANSIENT ;
 size_t TPM_HEADER_SIZE ;
 int be32_to_cpu (int ) ;
 int tpm2_find_cc (struct tpm_chip*,unsigned int) ;
 int tpm2_map_to_phandle (struct tpm_space*,int *) ;

__attribute__((used)) static int tpm2_map_command(struct tpm_chip *chip, u32 cc, u8 *cmd)
{
 struct tpm_space *space = &chip->work_space;
 unsigned int nr_handles;
 u32 attrs;
 __be32 *handle;
 int i;

 i = tpm2_find_cc(chip, cc);
 if (i < 0)
  return -EINVAL;

 attrs = chip->cc_attrs_tbl[i];
 nr_handles = (attrs >> TPM2_CC_ATTR_CHANDLES) & GENMASK(2, 0);

 handle = (__be32 *)&cmd[TPM_HEADER_SIZE];
 for (i = 0; i < nr_handles; i++, handle++) {
  if ((be32_to_cpu(*handle) & 0xFF000000) == TPM2_HT_TRANSIENT) {
   if (!tpm2_map_to_phandle(space, handle))
    return -EINVAL;
  }
 }

 return 0;
}
