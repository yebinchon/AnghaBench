
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int COMPARE_INT_SEEN_TICKS ;
 int back_to_back_c0_hazard () ;
 scalar_t__ c0_compare_int_pending () ;
 unsigned int read_c0_count () ;
 int write_c0_compare (unsigned int) ;

int c0_compare_int_usable(void)
{
 unsigned int delta;
 unsigned int cnt;
 if (c0_compare_int_pending()) {
  cnt = read_c0_count();
  write_c0_compare(cnt);
  back_to_back_c0_hazard();
  while (read_c0_count() < (cnt + COMPARE_INT_SEEN_TICKS))
   if (!c0_compare_int_pending())
    break;
  if (c0_compare_int_pending())
   return 0;
 }

 for (delta = 0x10; delta <= 0x400000; delta <<= 1) {
  cnt = read_c0_count();
  cnt += delta;
  write_c0_compare(cnt);
  back_to_back_c0_hazard();
  if ((int)(read_c0_count() - cnt) < 0)
      break;

 }

 while ((int)(read_c0_count() - cnt) <= 0)
  ;

 while (read_c0_count() < (cnt + COMPARE_INT_SEEN_TICKS))
  if (c0_compare_int_pending())
   break;
 if (!c0_compare_int_pending())
  return 0;
 cnt = read_c0_count();
 write_c0_compare(cnt);
 back_to_back_c0_hazard();
 while (read_c0_count() < (cnt + COMPARE_INT_SEEN_TICKS))
  if (!c0_compare_int_pending())
   break;
 if (c0_compare_int_pending())
  return 0;




 return 1;
}
