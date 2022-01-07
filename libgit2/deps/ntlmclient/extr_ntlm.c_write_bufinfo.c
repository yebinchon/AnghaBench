
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int ntlm_client ;
typedef int ntlm_buf ;


 size_t UINT16_MAX ;
 size_t UINT32_MAX ;
 int ntlm_client_set_errmsg (int *,char*) ;
 scalar_t__ write_int16 (int *,int *,int ) ;
 scalar_t__ write_int32 (int *,int *,int ) ;

__attribute__((used)) static inline bool write_bufinfo(
 ntlm_client *ntlm,
 ntlm_buf *out,
 size_t len,
 size_t offset)
{
 if (len > UINT16_MAX) {
  ntlm_client_set_errmsg(ntlm, "invalid string, too long");
  return 0;
 }

 if (offset > UINT32_MAX) {
  ntlm_client_set_errmsg(ntlm, "invalid string, invalid offset");
  return 0;
 }

 return write_int16(ntlm, out, (uint16_t)len) &&
  write_int16(ntlm, out, (uint16_t)len) &&
  write_int32(ntlm, out, (uint32_t)offset);
}
