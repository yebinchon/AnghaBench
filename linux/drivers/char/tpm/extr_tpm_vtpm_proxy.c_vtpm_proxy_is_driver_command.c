
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_header {int ordinal; } ;
struct tpm_chip {int flags; } ;



 int TPM_CHIP_FLAG_TPM2 ;

 int be32_to_cpu (int ) ;

__attribute__((used)) static int vtpm_proxy_is_driver_command(struct tpm_chip *chip,
     u8 *buf, size_t count)
{
 struct tpm_header *hdr = (struct tpm_header *)buf;

 if (count < sizeof(struct tpm_header))
  return 0;

 if (chip->flags & TPM_CHIP_FLAG_TPM2) {
  switch (be32_to_cpu(hdr->ordinal)) {
  case 129:
   return 1;
  }
 } else {
  switch (be32_to_cpu(hdr->ordinal)) {
  case 128:
   return 1;
  }
 }
 return 0;
}
