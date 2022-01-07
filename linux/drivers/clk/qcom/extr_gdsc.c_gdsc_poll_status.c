
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdsc {int dummy; } ;
typedef int ktime_t ;
typedef enum gdsc_status { ____Placeholder_gdsc_status } gdsc_status ;


 int ETIMEDOUT ;
 scalar_t__ TIMEOUT_US ;
 scalar_t__ gdsc_check_status (struct gdsc*,int) ;
 int ktime_get () ;
 scalar_t__ ktime_us_delta (int ,int ) ;

__attribute__((used)) static int gdsc_poll_status(struct gdsc *sc, enum gdsc_status status)
{
 ktime_t start;

 start = ktime_get();
 do {
  if (gdsc_check_status(sc, status))
   return 0;
 } while (ktime_us_delta(ktime_get(), start) < TIMEOUT_US);

 if (gdsc_check_status(sc, status))
  return 0;

 return -ETIMEDOUT;
}
