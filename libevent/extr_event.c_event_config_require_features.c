
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_config {int require_features; } ;



int
event_config_require_features(struct event_config *cfg,
    int features)
{
 if (!cfg)
  return (-1);
 cfg->require_features = features;
 return (0);
}
