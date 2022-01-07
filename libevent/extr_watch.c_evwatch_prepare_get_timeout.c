
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct evwatch_prepare_cb_info {struct timeval* timeout; } ;



int
evwatch_prepare_get_timeout(const struct evwatch_prepare_cb_info *info, struct timeval *timeout)
{
 if (info->timeout) {
  *timeout = *(info->timeout);
  return 1;
 }
 return 0;
}
