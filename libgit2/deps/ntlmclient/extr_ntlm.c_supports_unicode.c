
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ ntlm_client ;


 int NTLM_CLIENT_DISABLE_UNICODE ;

__attribute__((used)) static bool supports_unicode(ntlm_client *ntlm)
{
 return (ntlm->flags & NTLM_CLIENT_DISABLE_UNICODE) ?
  0 : 1;
}
