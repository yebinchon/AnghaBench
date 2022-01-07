
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reserved; int build; int minor; int major; } ;
typedef TYPE_1__ ntlm_version ;
typedef int ntlm_client ;
typedef int ntlm_buf ;


 scalar_t__ write_byte (int *,int *,int ) ;
 scalar_t__ write_int16 (int *,int *,int ) ;
 scalar_t__ write_int32 (int *,int *,int ) ;

__attribute__((used)) static inline bool write_version(
 ntlm_client *ntlm,
 ntlm_buf *out,
 ntlm_version *version)
{
 return write_byte(ntlm, out, version->major) &&
  write_byte(ntlm, out, version->minor) &&
  write_int16(ntlm, out, version->build) &&
  write_int32(ntlm, out, version->reserved);
}
