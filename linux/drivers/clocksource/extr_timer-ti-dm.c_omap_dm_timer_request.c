
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dm_timer {int dummy; } ;


 int REQUEST_ANY ;
 struct omap_dm_timer* _omap_dm_timer_request (int ,int *) ;

__attribute__((used)) static struct omap_dm_timer *omap_dm_timer_request(void)
{
 return _omap_dm_timer_request(REQUEST_ANY, ((void*)0));
}
