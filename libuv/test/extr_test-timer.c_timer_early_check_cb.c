
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef scalar_t__ uint64_t ;


 int ASSERT (int) ;
 scalar_t__ timer_early_check_expected_time ;
 int uv_hrtime () ;

__attribute__((used)) static void timer_early_check_cb(uv_timer_t* handle) {
  uint64_t hrtime = uv_hrtime() / 1000000;
  ASSERT(hrtime >= timer_early_check_expected_time);
}
