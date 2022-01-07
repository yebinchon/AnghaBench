
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* target_server; } ;
struct TYPE_5__ {TYPE_1__ challenge; } ;
typedef TYPE_2__ ntlm_client ;



const char *ntlm_client_target_server(ntlm_client *ntlm)
{
 return ntlm->challenge.target_server;
}
