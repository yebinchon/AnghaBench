
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dhcp_message_type { ____Placeholder_dhcp_message_type } dhcp_message_type ;
__attribute__((used)) static char *show_message_type (enum dhcp_message_type t) {
  switch (t) {
  case 133: return "DHCPDISCOVER";
  case 130: return "DHCPOFFER";
  case 128: return "DHCPREQUEST";
  case 134: return "DHCPDECLINE";
  case 135: return "DHCPACK";
  case 131: return "DHCPNAK";
  case 129: return "DHCPRELEASE";
  case 132: return "DHCPINFORM";
  }
  return ((void*)0);
}
