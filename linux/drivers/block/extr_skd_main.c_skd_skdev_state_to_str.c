
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum skd_drvr_state { ____Placeholder_skd_drvr_state } skd_drvr_state ;
const char *skd_skdev_state_to_str(enum skd_drvr_state state)
{
 switch (state) {
 case 137:
  return "LOAD";
 case 138:
  return "IDLE";
 case 144:
  return "BUSY";
 case 131:
  return "STARTING";
 case 136:
  return "ONLINE";
 case 134:
  return "PAUSING";
 case 135:
  return "PAUSED";
 case 133:
  return "RESTARTING";
 case 132:
  return "RESUMING";
 case 130:
  return "STOPPING";
 case 129:
  return "SYNCING";
 case 139:
  return "FAULT";
 case 140:
  return "DISAPPEARED";
 case 143:
  return "BUSY_ERASE";
 case 141:
  return "BUSY_SANITIZE";
 case 142:
  return "BUSY_IMMINENT";
 case 128:
  return "WAIT_BOOT";

 default:
  return "???";
 }
}
