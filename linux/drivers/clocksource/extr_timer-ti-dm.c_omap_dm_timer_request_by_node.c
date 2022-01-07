
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dm_timer {int dummy; } ;
struct device_node {int dummy; } ;


 int REQUEST_BY_NODE ;
 struct omap_dm_timer* _omap_dm_timer_request (int ,struct device_node*) ;

__attribute__((used)) static struct omap_dm_timer *omap_dm_timer_request_by_node(struct device_node *np)
{
 if (!np)
  return ((void*)0);

 return _omap_dm_timer_request(REQUEST_BY_NODE, np);
}
