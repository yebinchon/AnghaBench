
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 int APM_DEVICE_ALL ;
 int set_power_state (int ,int ) ;

__attribute__((used)) static int set_system_power_state(u_short state)
{
 return set_power_state(APM_DEVICE_ALL, state);
}
