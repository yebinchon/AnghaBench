
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s ;
typedef enum dhcp_option { ____Placeholder_dhcp_option } dhcp_option ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char *show_option (enum dhcp_option o) {
  switch (o) {
  case 160: return "Pad";
  case 189: return "End";
  case 140: return "Subnet Mask";
  case 134: return "Time Offset";
  case 147: return "Router";
  case 133: return "Time Server";
  case 173: return "Name Server";
  case 191: return "Domain Name Server";
  case 181: return "Log Server";
  case 198: return "Cookie Server";
  case 180: return "LPR Server";
  case 185: return "Impress Server";
  case 149: return "Resource Location Server";
  case 186: return "Host Name";
  case 202: return "Boot File Size";
  case 176: return "Merit Dump File";
  case 192: return "Domain Name";
  case 139: return "Swap Server";
  case 148: return "Root Path";
  case 187: return "Extensions Path";
  case 182: return "IP Forwarding";
  case 162: return "Non-Local Source Routing";
  case 154: return "Policy Filter";
  case 178: return "Maximum Datagram Reassembly Size";
  case 195: return "Default IP Time-to-live";
  case 158: return "Path MTU Aging Timeout";
  case 157: return "Path MTU Plateau Table";
  case 184: return "Interface MTU Option";
  case 204: return "All Subnets are Local";
  case 200: return "Broadcast Address";
  case 156: return "Perform Mask Discovery";
  case 179: return "Mask Supplier";
  case 155: return "Perform Router Discovery";
  case 146: return "Router Solicitation Address";
  case 143: return "Static Route";
  case 132: return "Trailer Encapsulation";
  case 203: return "ARP Cache Timeout";
  case 188: return "Ethernet Encapsulation";
  case 138: return "TCP Default TTL";
  case 136: return "TCP Keepalive Interval";
  case 137: return "TCP Keepalive Garbage";
  case 167: return "Network Information Service Domain";
  case 168: return "Network Information Servers";
  case 163: return "Network Time Protocol Servers";
  case 130: return "Vendor Specific";
  case 171: return "NetBIOS over TCP/IP Name Server";
  case 172: return "NetBIOS over TCP/IP Datagram Distribution Server";
  case 170: return "NetBIOS over TCP/IP Node Type";
  case 169: return "NetBIOS over TCP/IP Scope";
  case 128: return "X Window System Font Server";
  case 129: return "X Window System Display Manager";
  case 166: return "Network Information Service+ Domain";
  case 165: return "Network Information Service+ Servers";
  case 174: return "Mobile IP Home Agent";
  case 144: return "Simple Mail Transport Protocol Server";
  case 153: return "Post Office Protocol Server";
  case 164: return "Network News Transport Protocol Server";
  case 194: return "Default World Wide Web Server";
  case 197: return "Default Finger Server";
  case 196: return "Default Internet Relay Chat Server";
  case 141: return "StreetTalk Server";
  case 142: return "StreetTalk Directory Assistance Server";
  case 150: return "Requested IP Address";
  case 183: return "IP Address Lease Time";
  case 161: return "Overload";
  case 135: return "TFTP server name";
  case 201: return "Bootfile name";
  case 193: return "DHCP Message Type";
  case 145: return "Server Identifier";
  case 159: return "Parameter Request List";
  case 175: return "Message";
  case 177: return "Maximum DHCP Message Size";
  case 151: return "Renewal Time Value";
  case 152: return "Rebinding Time Value";
  case 131: return "Vendor class identifier";
  case 199: return "Client-identifier";
  case 190: return "Domain Search";
  }
  static char s[128];
  snprintf (s, sizeof (s), "Unknown opcode %d", o);
  return s;
}
