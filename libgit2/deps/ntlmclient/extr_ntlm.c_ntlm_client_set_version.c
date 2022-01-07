
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {int reserved; int build; void* minor; void* major; } ;
struct TYPE_6__ {int flags; TYPE_1__ host_version; } ;
typedef TYPE_2__ ntlm_client ;


 int NTLM_ENABLE_HOSTVERSION ;
 int assert (TYPE_2__*) ;

int ntlm_client_set_version(
 ntlm_client *ntlm,
 uint8_t major,
 uint8_t minor,
 uint16_t build)
{
 assert(ntlm);

 ntlm->host_version.major = major;
 ntlm->host_version.minor = minor;
 ntlm->host_version.build = build;
 ntlm->host_version.reserved = 0x0f000000;

 ntlm->flags |= NTLM_ENABLE_HOSTVERSION;

 return 0;
}
