
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timestamp; } ;
typedef TYPE_1__ ntlm_client ;


 int time (int *) ;

__attribute__((used)) static bool generate_timestamp(ntlm_client *ntlm)
{
 if (!ntlm->timestamp)
  ntlm->timestamp = (time(((void*)0)) + 11644473600) * 10000000;

 return 1;
}
