
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t* autodetect; } ;
struct TYPE_5__ {int probed_format; } ;
struct TYPE_4__ {scalar_t__ sect; } ;


 TYPE_3__* DP ;
 TYPE_2__* DRS ;
 TYPE_1__* floppy_type ;

__attribute__((used)) static int next_valid_format(void)
{
 int probed_format;

 probed_format = DRS->probed_format;
 while (1) {
  if (probed_format >= 8 || !DP->autodetect[probed_format]) {
   DRS->probed_format = 0;
   return 1;
  }
  if (floppy_type[DP->autodetect[probed_format]].sect) {
   DRS->probed_format = probed_format;
   return 0;
  }
  probed_format++;
 }
}
