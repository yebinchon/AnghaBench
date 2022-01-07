
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reserved; int build; int minor; int major; } ;
typedef TYPE_1__ ntlm_version ;
typedef int ntlm_client ;
typedef int ntlm_buf ;


 scalar_t__ read_byte (int *,int *,int *) ;
 scalar_t__ read_int16 (int *,int *,int *) ;
 scalar_t__ read_int32 (int *,int *,int *) ;

__attribute__((used)) static inline bool read_version(
 ntlm_version *out,
 ntlm_client *ntlm,
 ntlm_buf *message)
{
 return read_byte(&out->major, ntlm, message) &&
  read_byte(&out->minor, ntlm, message) &&
  read_int16(&out->build, ntlm, message) &&
  read_int32(&out->reserved, ntlm, message);
}
