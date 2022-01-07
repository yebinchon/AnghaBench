
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int block_signals_trace () ;
 int signals_enabled ;
 int unblock_signals_trace () ;

int set_signals_trace(int enable)
{
 int ret;
 if (signals_enabled == enable)
  return enable;

 ret = signals_enabled;
 if (enable)
  unblock_signals_trace();
 else
  block_signals_trace();

 return ret;
}
