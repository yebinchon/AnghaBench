
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int ntlm_client ;
typedef int ntlm_buf ;


 scalar_t__ read_int16 (int *,int *,int *) ;
 scalar_t__ read_int32 (int *,int *,int *) ;

__attribute__((used)) static inline bool read_bufinfo(
 uint16_t *out_len,
 uint32_t *out_offset,
 ntlm_client *ntlm,
 ntlm_buf *message)
{
 uint16_t allocated;

 return read_int16(out_len, ntlm, message) &&
  read_int16(&allocated, ntlm, message) &&
  read_int32(out_offset, ntlm, message);
}
