
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* local_cleanup ) (void*) ;void* local_cleanup_payload; } ;


 TYPE_1__ _clar ;

void cl_set_cleanup(void (*cleanup)(void *), void *opaque)
{
 _clar.local_cleanup = cleanup;
 _clar.local_cleanup_payload = opaque;
}
