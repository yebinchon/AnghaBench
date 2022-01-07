
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {scalar_t__ nonce; } ;
typedef TYPE_1__ ntlm_client ;


 int memcpy (scalar_t__*,unsigned char*,int) ;
 int ntlm_random_bytes (TYPE_1__*,unsigned char*,int) ;

__attribute__((used)) static bool generate_nonce(ntlm_client *ntlm)
{
 unsigned char buf[8];

 if (ntlm->nonce)
  return 1;

 if (!ntlm_random_bytes(ntlm, buf, 8))
  return 0;

 memcpy(&ntlm->nonce, buf, sizeof(uint64_t));
 return 1;
}
