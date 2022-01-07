
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *skd_drive_state_to_str(int state)
{
 switch (state) {
 case 131:
  return "OFFLINE";
 case 134:
  return "INIT";
 case 130:
  return "ONLINE";
 case 140:
  return "BUSY";
 case 136:
  return "FAULT";
 case 137:
  return "DEGRADED";
 case 128:
  return "INK_DOWN";
 case 129:
  return "SOFT_RESET";
 case 132:
  return "NEED_FW";
 case 133:
  return "INIT_FAULT";
 case 138:
  return "BUSY_SANITIZE";
 case 139:
  return "BUSY_ERASE";
 case 135:
  return "FW_BOOTING";
 default:
  return "???";
 }
}
