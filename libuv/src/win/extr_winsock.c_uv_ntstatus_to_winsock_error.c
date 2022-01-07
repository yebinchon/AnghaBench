
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;
typedef int DWORD ;


 int ERROR_IO_PENDING ;
 int ERROR_SEVERITY_ERROR ;
 int ERROR_SEVERITY_WARNING ;
 int ERROR_SUCCESS ;
 int FACILITY_NTWIN32 ;
 int WSAEACCES ;
 int WSAEADDRINUSE ;
 int WSAEADDRNOTAVAIL ;
 int WSAECONNABORTED ;
 int WSAECONNREFUSED ;
 int WSAECONNRESET ;
 int WSAEDISCON ;
 int WSAEFAULT ;
 int WSAEHOSTUNREACH ;
 int WSAEINTR ;
 int WSAEINVAL ;
 int WSAEMSGSIZE ;
 int WSAENETDOWN ;
 int WSAENETUNREACH ;
 int WSAENOBUFS ;
 int WSAENOTCONN ;
 int WSAENOTSOCK ;
 int WSAEOPNOTSUPP ;
 int WSAESHUTDOWN ;
 int WSAETIMEDOUT ;
 int WSAEWOULDBLOCK ;

int uv_ntstatus_to_winsock_error(NTSTATUS status) {
  switch (status) {
    case 134:
      return ERROR_SUCCESS;

    case 145:
      return ERROR_IO_PENDING;

    case 162:
    case 147:
      return WSAENOTSOCK;

    case 167:
    case 146:
    case 177:
    case 128:
    case 152:
    case 141:
    case 131:
    case 138:
      return WSAENOBUFS;

    case 132:
    case 135:
    case 182:
      return WSAEADDRINUSE;

    case 158:
    case 160:
    case 133:
      return WSAETIMEDOUT;

    case 170:
      return WSAEDISCON;

    case 140:
    case 172:
    case 159:
    case 174:
    case 143:
    case 169:
      return WSAECONNRESET;

    case 157:
    case 130:
    case 175:
      return WSAECONNABORTED;

    case 181:
    case 155:
    case 142:
      return WSAENETUNREACH;

    case 168:
      return WSAEHOSTUNREACH;

    case 178:
    case 137:
      return WSAEINTR;

    case 180:
    case 164:
      return WSAEMSGSIZE;

    case 179:
    case 183:
      return WSAEFAULT;

    case 171:
    case 136:
      return WSAEWOULDBLOCK;

    case 161:
    case 156:
    case 151:
    case 150:
    case 148:
    case 149:
    case 129:
      return WSAENETDOWN;

    case 163:
      return WSAENOTCONN;

    case 139:
    case 173:
      return WSAECONNREFUSED;

    case 144:
      return WSAESHUTDOWN;

    case 176:
    case 166:
    case 165:
      return WSAEADDRNOTAVAIL;

    case 153:
    case 154:
      return WSAEOPNOTSUPP;

    case 184:
      return WSAEACCES;

    default:
      if ((status & (FACILITY_NTWIN32 << 16)) == (FACILITY_NTWIN32 << 16) &&
          (status & (ERROR_SEVERITY_ERROR | ERROR_SEVERITY_WARNING))) {


        return (DWORD) (status & 0xffff);
      } else {

        return WSAEINVAL;
      }
  }
}
