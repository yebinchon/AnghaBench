
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int block_signals () ;
 int signals_enabled ;
 int unblock_signals () ;

int set_signals(int enable)
{
 int ret;
 if (signals_enabled == enable)
  return enable;

 ret = signals_enabled;
 if (enable)
  unblock_signals();
 else block_signals();

 return ret;
}
