
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int nonce; } ;
typedef TYPE_1__ ntlm_client ;


 int assert (TYPE_1__*) ;

int ntlm_client_set_nonce(ntlm_client *ntlm, uint64_t nonce)
{
 assert(ntlm);
 ntlm->nonce = nonce;
 return 0;
}
