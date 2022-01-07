
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_dm_timer {int dummy; } ;


 int REQUEST_BY_CAP ;
 struct omap_dm_timer* _omap_dm_timer_request (int ,int *) ;

struct omap_dm_timer *omap_dm_timer_request_by_cap(u32 cap)
{
 return _omap_dm_timer_request(REQUEST_BY_CAP, &cap);
}
