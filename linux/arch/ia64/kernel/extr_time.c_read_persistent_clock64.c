
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;


 int efi_gettimeofday (struct timespec64*) ;

void read_persistent_clock64(struct timespec64 *ts)
{
 efi_gettimeofday(ts);
}
