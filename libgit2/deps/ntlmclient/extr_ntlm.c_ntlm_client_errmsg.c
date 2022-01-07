
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* errmsg; } ;
typedef TYPE_1__ ntlm_client ;


 int assert (TYPE_1__*) ;

const char *ntlm_client_errmsg(ntlm_client *ntlm)
{
 assert(ntlm);
 return ntlm->errmsg ? ntlm->errmsg : "no error";
}
