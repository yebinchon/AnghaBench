
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_clocktype_t ;
typedef int uint64_t ;
struct TYPE_3__ {int numer; int denom; } ;
typedef TYPE_1__ mach_timebase_info_data_t ;


 scalar_t__ ACCESS_ONCE (int ,int) ;
 scalar_t__ KERN_SUCCESS ;
 int abort () ;
 int mach_absolute_time () ;
 scalar_t__ mach_timebase_info (TYPE_1__*) ;
 int uint32_t ;

uint64_t uv__hrtime(uv_clocktype_t type) {
  static mach_timebase_info_data_t info;

  if ((ACCESS_ONCE(uint32_t, info.numer) == 0 ||
       ACCESS_ONCE(uint32_t, info.denom) == 0) &&
      mach_timebase_info(&info) != KERN_SUCCESS)
    abort();

  return mach_absolute_time() * info.numer / info.denom;
}
