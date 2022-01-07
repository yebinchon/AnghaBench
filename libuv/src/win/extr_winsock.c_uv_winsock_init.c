
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwServiceFlags1; } ;
typedef TYPE_1__ WSAPROTOCOL_INFOW ;
typedef int WSADATA ;
typedef scalar_t__ SOCKET ;


 int AF_INET ;
 int AF_INET6 ;
 int GetSystemMetrics (int ) ;
 scalar_t__ INVALID_SOCKET ;
 int IPPROTO_IP ;
 int MAKEWORD (int,int) ;
 int SM_CLEANBOOT ;
 scalar_t__ SOCKET_ERROR ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_PROTOCOL_INFOW ;
 int WSAGetLastError () ;
 int WSAStartup (int ,int *) ;
 int XP1_IFS_HANDLES ;
 int abort () ;
 scalar_t__ closesocket (scalar_t__) ;
 int error_means_no_support (int) ;
 scalar_t__ getsockopt (scalar_t__,int ,int ,char*,int*) ;
 scalar_t__ socket (int ,int ,int ) ;
 int uv_addr_ip4_any_ ;
 int uv_addr_ip6_any_ ;
 int uv_fatal_error (int,char*) ;
 scalar_t__ uv_ip4_addr (char*,int ,int *) ;
 scalar_t__ uv_ip6_addr (char*,int ,int *) ;
 int uv_tcp_non_ifs_lsp_ipv4 ;
 int uv_tcp_non_ifs_lsp_ipv6 ;

void uv_winsock_init(void) {
  WSADATA wsa_data;
  int errorno;
  SOCKET dummy;
  WSAPROTOCOL_INFOW protocol_info;
  int opt_len;


  if (uv_ip4_addr("0.0.0.0", 0, &uv_addr_ip4_any_)) {
    abort();
  }

  if (uv_ip6_addr("::", 0, &uv_addr_ip6_any_)) {
    abort();
  }


  if (1 == GetSystemMetrics(SM_CLEANBOOT)) return;


  errorno = WSAStartup(MAKEWORD(2, 2), &wsa_data);
  if (errorno != 0) {
    uv_fatal_error(errorno, "WSAStartup");
  }


  dummy = socket(AF_INET, SOCK_STREAM, IPPROTO_IP);

  if (dummy != INVALID_SOCKET) {
    opt_len = (int) sizeof protocol_info;
    if (getsockopt(dummy,
                   SOL_SOCKET,
                   SO_PROTOCOL_INFOW,
                   (char*) &protocol_info,
                   &opt_len) == SOCKET_ERROR)
      uv_fatal_error(WSAGetLastError(), "getsockopt");

    if (!(protocol_info.dwServiceFlags1 & XP1_IFS_HANDLES))
      uv_tcp_non_ifs_lsp_ipv4 = 1;

    if (closesocket(dummy) == SOCKET_ERROR)
      uv_fatal_error(WSAGetLastError(), "closesocket");

  } else if (!error_means_no_support(WSAGetLastError())) {

    uv_fatal_error(WSAGetLastError(), "socket");
  }


  dummy = socket(AF_INET6, SOCK_STREAM, IPPROTO_IP);

  if (dummy != INVALID_SOCKET) {
    opt_len = (int) sizeof protocol_info;
    if (getsockopt(dummy,
                   SOL_SOCKET,
                   SO_PROTOCOL_INFOW,
                   (char*) &protocol_info,
                   &opt_len) == SOCKET_ERROR)
      uv_fatal_error(WSAGetLastError(), "getsockopt");

    if (!(protocol_info.dwServiceFlags1 & XP1_IFS_HANDLES))
      uv_tcp_non_ifs_lsp_ipv6 = 1;

    if (closesocket(dummy) == SOCKET_ERROR)
      uv_fatal_error(WSAGetLastError(), "closesocket");

  } else if (!error_means_no_support(WSAGetLastError())) {

    uv_fatal_error(WSAGetLastError(), "socket");
  }
}
