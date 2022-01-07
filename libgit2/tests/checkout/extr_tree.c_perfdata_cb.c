
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_checkout_perfdata ;


 int memcpy (void*,int const*,int) ;

void perfdata_cb(const git_checkout_perfdata *in, void *payload)
{
 memcpy(payload, in, sizeof(git_checkout_perfdata));
}
