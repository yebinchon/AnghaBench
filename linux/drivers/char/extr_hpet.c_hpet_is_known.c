
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpets {scalar_t__ hp_hpet_phys; struct hpets* hp_next; } ;
struct hpet_data {scalar_t__ hd_phys_address; } ;


 struct hpets* hpets ;

__attribute__((used)) static int hpet_is_known(struct hpet_data *hdp)
{
 struct hpets *hpetp;

 for (hpetp = hpets; hpetp; hpetp = hpetp->hp_next)
  if (hpetp->hp_hpet_phys == hdp->hd_phys_address)
   return 1;

 return 0;
}
