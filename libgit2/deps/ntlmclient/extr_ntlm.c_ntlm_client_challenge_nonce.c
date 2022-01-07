
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int nonce; } ;
struct TYPE_5__ {TYPE_1__ challenge; } ;
typedef TYPE_2__ ntlm_client ;



uint64_t ntlm_client_challenge_nonce(ntlm_client *ntlm)
{
 return ntlm->challenge.nonce;
}
