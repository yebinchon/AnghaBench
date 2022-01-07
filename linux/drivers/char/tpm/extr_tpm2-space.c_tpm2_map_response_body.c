
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct tpm_space {int dummy; } ;
struct tpm_header {void* length; void* return_code; } ;
struct tpm_chip {struct tpm_space work_space; } ;
struct tpm2_cap_handles {void* count; void** handles; void* capability; } ;
typedef int __be32 ;


 int EFAULT ;
 int TPM2_CAP_HANDLES ;
 scalar_t__ TPM2_CC_GET_CAPABILITY ;

 int TPM2_RC_SUCCESS ;
 int TPM_HEADER_SIZE ;
 int be32_to_cpu (void*) ;
 scalar_t__ be32_to_cpup (int *) ;
 void* cpu_to_be32 (int) ;
 scalar_t__ tpm2_map_to_vhandle (struct tpm_space*,scalar_t__,int) ;

__attribute__((used)) static int tpm2_map_response_body(struct tpm_chip *chip, u32 cc, u8 *rsp,
      size_t len)
{
 struct tpm_space *space = &chip->work_space;
 struct tpm_header *header = (struct tpm_header *)rsp;
 struct tpm2_cap_handles *data;
 u32 phandle;
 u32 phandle_type;
 u32 vhandle;
 int i;
 int j;

 if (cc != TPM2_CC_GET_CAPABILITY ||
     be32_to_cpu(header->return_code) != TPM2_RC_SUCCESS) {
  return 0;
 }

 if (len < TPM_HEADER_SIZE + 9)
  return -EFAULT;

 data = (void *)&rsp[TPM_HEADER_SIZE];
 if (be32_to_cpu(data->capability) != TPM2_CAP_HANDLES)
  return 0;

 if (len != TPM_HEADER_SIZE + 9 + 4 * be32_to_cpu(data->count))
  return -EFAULT;

 for (i = 0, j = 0; i < be32_to_cpu(data->count); i++) {
  phandle = be32_to_cpup((__be32 *)&data->handles[i]);
  phandle_type = phandle & 0xFF000000;

  switch (phandle_type) {
  case 128:
   vhandle = tpm2_map_to_vhandle(space, phandle, 0);
   if (!vhandle)
    break;

   data->handles[j] = cpu_to_be32(vhandle);
   j++;
   break;

  default:
   data->handles[j] = cpu_to_be32(phandle);
   j++;
   break;
  }

 }

 header->length = cpu_to_be32(TPM_HEADER_SIZE + 9 + 4 * j);
 data->count = cpu_to_be32(j);
 return 0;
}
