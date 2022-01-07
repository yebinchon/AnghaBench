
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ version; } ;


 size_t FDC (int) ;
 scalar_t__ FDC_NONE ;
 int allowed_drive_mask ;
 TYPE_1__* fdc_state ;

__attribute__((used)) static bool floppy_available(int drive)
{
 if (!(allowed_drive_mask & (1 << drive)))
  return 0;
 if (fdc_state[FDC(drive)].version == FDC_NONE)
  return 0;
 return 1;
}
