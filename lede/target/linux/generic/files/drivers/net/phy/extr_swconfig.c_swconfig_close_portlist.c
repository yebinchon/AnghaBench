
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swconfig_callback {scalar_t__* nest; int msg; } ;


 int nla_nest_end (int ,scalar_t__) ;

__attribute__((used)) static int
swconfig_close_portlist(struct swconfig_callback *cb, void *arg)
{
 if (cb->nest[0])
  nla_nest_end(cb->msg, cb->nest[0]);
 return 0;
}
