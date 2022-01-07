
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int timestamp; } ;
typedef TYPE_1__ ntlm_client ;


 int assert (TYPE_1__*) ;

int ntlm_client_set_timestamp(ntlm_client *ntlm, uint64_t timestamp)
{
 assert(ntlm);
 ntlm->timestamp = timestamp;
 return 0;
}
