
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ntlm_client {int dummy; } ;
typedef int ntlm_unicode_ctx ;
typedef int ntlm_hmac_ctx ;
typedef int ntlm_client_flags ;
struct TYPE_11__ {int buf; } ;
struct TYPE_10__ {int target_server_dns; int target_server; int target_domain_dns; int target_domain; int target; int target_info; } ;
struct TYPE_9__ {int buf; } ;
struct TYPE_12__ {int * unicode_ctx; int * hmac_ctx; int flags; int ntlm2_response; int target_utf16; int target; int hostdomain; int hostname_utf16; int hostname; TYPE_3__ response; TYPE_2__ challenge; TYPE_1__ negotiate; } ;
typedef TYPE_4__ ntlm_client ;


 int assert (TYPE_4__*) ;
 int free (int ) ;
 int free_credentials (TYPE_4__*) ;
 int memset (TYPE_4__*,int ,int) ;

void ntlm_client_reset(ntlm_client *ntlm)
{
 ntlm_client_flags flags;
 ntlm_hmac_ctx *hmac_ctx;
 ntlm_unicode_ctx *unicode_ctx;

 assert(ntlm);

 free(ntlm->negotiate.buf);
 free(ntlm->challenge.target_info);
 free(ntlm->challenge.target);
 free(ntlm->challenge.target_domain);
 free(ntlm->challenge.target_domain_dns);
 free(ntlm->challenge.target_server);
 free(ntlm->challenge.target_server_dns);
 free(ntlm->response.buf);

 free(ntlm->hostname);
 free(ntlm->hostname_utf16);
 free(ntlm->hostdomain);

 free(ntlm->target);
 free(ntlm->target_utf16);

 free(ntlm->ntlm2_response);

 free_credentials(ntlm);

 flags = ntlm->flags;
 hmac_ctx = ntlm->hmac_ctx;
 unicode_ctx = ntlm->unicode_ctx;

 memset(ntlm, 0, sizeof(struct ntlm_client));

 ntlm->flags = flags;
 ntlm->hmac_ctx = hmac_ctx;
 ntlm->unicode_ctx = unicode_ctx;
}
