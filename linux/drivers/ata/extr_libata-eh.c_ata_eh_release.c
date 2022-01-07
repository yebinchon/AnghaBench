
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {int eh_mutex; int * eh_owner; } ;


 int WARN_ON_ONCE (int) ;
 int * current ;
 int mutex_unlock (int *) ;

void ata_eh_release(struct ata_port *ap)
{
 WARN_ON_ONCE(ap->host->eh_owner != current);
 ap->host->eh_owner = ((void*)0);
 mutex_unlock(&ap->host->eh_mutex);
}
