
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* errmsg; int state; } ;
typedef TYPE_1__ ntlm_client ;


 int NTLM_STATE_ERROR ;

void ntlm_client_set_errmsg(ntlm_client *ntlm, const char *errmsg)
{
 ntlm->state = NTLM_STATE_ERROR;
 ntlm->errmsg = errmsg;
}
