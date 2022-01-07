
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SWITCH_CMD_GET_SWITCH ;
 int list_switch ;
 int swlib_call (int ,int ,int *,int *) ;
 int swlib_priv_free () ;
 scalar_t__ swlib_priv_init () ;

void
swlib_list(void)
{
 if (swlib_priv_init() < 0)
  return;
 swlib_call(SWITCH_CMD_GET_SWITCH, list_switch, ((void*)0), ((void*)0));
 swlib_priv_free();
}
