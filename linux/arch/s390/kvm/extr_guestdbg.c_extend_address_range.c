
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static void extend_address_range(u64 *start, u64 *stop, u64 estart, int len)
{
 u64 estop;

 if (len > 0)
  len--;
 else
  len = 0;

 estop = estart + len;


 if ((*start == 0) && (*stop == 0)) {
  *start = estart;
  *stop = estop;
 } else if (*start <= *stop) {

  if (estart < *start)
   *start = estart;
  if (estop > *stop)
   *stop = estop;
 } else {

  if (estart <= *stop) {
   if (estop > *stop)
    *stop = estop;
  } else if (estop > *start) {
   if (estart < *start)
    *start = estart;
  }

  else if ((estop - *stop) < (*start - estart))
   *stop = estop;
  else
   *start = estart;
 }
}
