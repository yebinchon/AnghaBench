
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned long uint64_t ;
typedef unsigned long uint32_t ;
typedef unsigned long uint16_t ;
struct papr_scm_priv {scalar_t__ metadata_size; int drc_index; } ;
struct nd_cmd_set_config_hdr {scalar_t__ in_offset; scalar_t__ in_length; scalar_t__ in_buf; } ;
typedef scalar_t__ int64_t ;
typedef int __be64 ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ H_PARAMETER ;
 int H_SCM_WRITE_METADATA ;
 int cpu_to_be16 (unsigned long) ;
 int cpu_to_be32 (unsigned long) ;
 int cpu_to_be64 (unsigned long) ;
 scalar_t__ plpar_hcall_norets (int ,int ,unsigned long,int,int) ;

__attribute__((used)) static int papr_scm_meta_set(struct papr_scm_priv *p,
        struct nd_cmd_set_config_hdr *hdr)
{
 unsigned long offset, data_offset;
 int len, wrote;
 unsigned long data;
 __be64 data_be;
 int64_t ret;

 if ((hdr->in_offset + hdr->in_length) >= p->metadata_size)
  return -EINVAL;

 for (len = hdr->in_length; len; len -= wrote) {

  data_offset = hdr->in_length - len;
  offset = hdr->in_offset + data_offset;

  if (len >= 8) {
   data = *(uint64_t *)(hdr->in_buf + data_offset);
   data_be = cpu_to_be64(data);
   wrote = 8;
  } else if (len >= 4) {
   data = *(uint32_t *)(hdr->in_buf + data_offset);
   data &= 0xffffffff;
   data_be = cpu_to_be32(data);
   wrote = 4;
  } else if (len >= 2) {
   data = *(uint16_t *)(hdr->in_buf + data_offset);
   data &= 0xffff;
   data_be = cpu_to_be16(data);
   wrote = 2;
  } else {
   data_be = *(uint8_t *)(hdr->in_buf + data_offset);
   data_be &= 0xff;
   wrote = 1;
  }

  ret = plpar_hcall_norets(H_SCM_WRITE_METADATA, p->drc_index,
      offset, data_be, wrote);
  if (ret == H_PARAMETER)
   return -ENODEV;
  if (ret)
   return -EINVAL;
 }

 return 0;
}
