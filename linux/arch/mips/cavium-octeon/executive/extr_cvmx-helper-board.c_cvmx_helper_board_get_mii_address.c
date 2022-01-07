
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int board_type; } ;
 int CVMX_HELPER_BOARD_MGMT_IPD_PORT ;
 int cvmx_dprintf (char*,int) ;
 TYPE_1__* cvmx_sysinfo_get () ;

int cvmx_helper_board_get_mii_address(int ipd_port)
{
 switch (cvmx_sysinfo_get()->board_type) {
 case 130:

  return -1;
 case 143:
 case 141:
 case 129:
 case 133:

  if ((ipd_port >= 16) && (ipd_port < 20))
   return ipd_port - 16;
  else
   return -1;
 case 139:
 case 149:
 case 140:
 case 154:
 case 155:
 case 153:




  if (ipd_port == 0)
   return 4;
  else if (ipd_port == 1)
   return 9;
  else
   return -1;
 case 137:

  if ((ipd_port >= 0) && (ipd_port < 4))
   return ipd_port;
  else if ((ipd_port >= 16) && (ipd_port < 20))
   return ipd_port - 16 + 4;
  else
   return -1;
 case 150:

  return -1;
 case 148:
 case 147:
 case 142:

  if ((ipd_port >= CVMX_HELPER_BOARD_MGMT_IPD_PORT) &&
      (ipd_port < (CVMX_HELPER_BOARD_MGMT_IPD_PORT + 2)))
   return ipd_port - CVMX_HELPER_BOARD_MGMT_IPD_PORT;




  if ((ipd_port >= 0) && (ipd_port < 4))
   return ipd_port + 2;
  else
   return -1;
 case 146:
 case 145:
 case 144:

  if (ipd_port == CVMX_HELPER_BOARD_MGMT_IPD_PORT)
   return 0;




  if ((ipd_port >= 0) && (ipd_port < 4))
   return ipd_port + 1;
  else
   return -1;
 case 152:
  if (ipd_port == 2)
   return 4;
  else
   return -1;
 case 131:

  if ((ipd_port >= 16) && (ipd_port < 20))
   return ipd_port - 16 + 1;
  else
   return -1;
 case 132:
 case 136:
  return -1;
 case 134:
  if (ipd_port >= 0 && ipd_port <= 3)
   return (ipd_port + 0x1f) & 0x1f;
  else
   return -1;
 case 135:
  if (ipd_port >= 0 && ipd_port <= 1)
   return ipd_port + 1;
  else
   return -1;
 case 156:




  return -1;

 case 151:
  if (ipd_port >= 0 && ipd_port <= 3)
   return ipd_port;
  else if (ipd_port >= 16 && ipd_port <= 19)
   return ipd_port - 16 + 4;
  else
   return -1;
 case 128:
  if (ipd_port >= 0 && ipd_port <= 2)
   return 7 - ipd_port;
  else
   return -1;
 case 138:
  if (ipd_port == CVMX_HELPER_BOARD_MGMT_IPD_PORT)
   return 1;
  else
   return -1;

 }


 cvmx_dprintf
     ("cvmx_helper_board_get_mii_address: Unknown board type %d\n",
      cvmx_sysinfo_get()->board_type);
 return -1;
}
