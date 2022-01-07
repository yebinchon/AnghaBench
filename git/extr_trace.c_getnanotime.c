
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int gettimeofday_nanos () ;
 int highres_nanos () ;

uint64_t getnanotime(void)
{
 static uint64_t offset;
 if (offset > 1) {

  return offset + highres_nanos();
 } else if (offset == 1) {

  return gettimeofday_nanos();
 } else {

  uint64_t now = gettimeofday_nanos();
  uint64_t highres = highres_nanos();
  if (highres)
   offset = now - highres;
  else
   offset = 1;
  return now;
 }
}
