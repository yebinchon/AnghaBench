
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_config {int flags; } ;



int
event_config_set_flag(struct event_config *cfg, int flag)
{
 if (!cfg)
  return -1;
 cfg->flags |= flag;
 return 0;
}
