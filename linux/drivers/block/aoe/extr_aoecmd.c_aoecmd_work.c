
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoedev {int dummy; } ;


 scalar_t__ aoecmd_ata_rw (struct aoedev*) ;
 int rexmit_deferred (struct aoedev*) ;

void
aoecmd_work(struct aoedev *d)
{
 rexmit_deferred(d);
 while (aoecmd_ata_rw(d))
  ;
}
