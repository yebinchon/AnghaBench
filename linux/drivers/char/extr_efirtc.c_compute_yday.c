
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int month; int day; int year; } ;
typedef TYPE_1__ efi_time_t ;


 int** __mon_yday ;
 size_t is_leap (int ) ;

__attribute__((used)) static inline int
compute_yday(efi_time_t *eft)
{

 return __mon_yday[is_leap(eft->year)][eft->month-1]+ eft->day -1;
}
