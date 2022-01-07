
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {scalar_t__ eh_owner; } ;


 unsigned int USEC_PER_MSEC ;
 int ata_eh_acquire (struct ata_port*) ;
 int ata_eh_release (struct ata_port*) ;
 scalar_t__ current ;
 int msleep (unsigned int) ;
 int usleep_range (unsigned long,unsigned long) ;

void ata_msleep(struct ata_port *ap, unsigned int msecs)
{
 bool owns_eh = ap && ap->host->eh_owner == current;

 if (owns_eh)
  ata_eh_release(ap);

 if (msecs < 20) {
  unsigned long usecs = msecs * USEC_PER_MSEC;
  usleep_range(usecs, usecs + 50);
 } else {
  msleep(msecs);
 }

 if (owns_eh)
  ata_eh_acquire(ap);
}
