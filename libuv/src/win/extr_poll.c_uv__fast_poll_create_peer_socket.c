
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iProtocol; int iSocketType; int iAddressFamily; } ;
typedef TYPE_1__ WSAPROTOCOL_INFOW ;
typedef int ULONG_PTR ;
typedef scalar_t__ SOCKET ;
typedef int HANDLE ;


 int * CreateIoCompletionPort (int ,int ,int ,int ) ;
 int HANDLE_FLAG_INHERIT ;
 scalar_t__ INVALID_SOCKET ;
 int SetHandleInformation (int ,int ,int ) ;
 scalar_t__ WSASocketW (int ,int ,int ,TYPE_1__*,int ,int ) ;
 int WSA_FLAG_OVERLAPPED ;
 int closesocket (scalar_t__) ;

__attribute__((used)) static SOCKET uv__fast_poll_create_peer_socket(HANDLE iocp,
    WSAPROTOCOL_INFOW* protocol_info) {
  SOCKET sock = 0;

  sock = WSASocketW(protocol_info->iAddressFamily,
                    protocol_info->iSocketType,
                    protocol_info->iProtocol,
                    protocol_info,
                    0,
                    WSA_FLAG_OVERLAPPED);
  if (sock == INVALID_SOCKET) {
    return INVALID_SOCKET;
  }

  if (!SetHandleInformation((HANDLE) sock, HANDLE_FLAG_INHERIT, 0)) {
    goto error;
  };

  if (CreateIoCompletionPort((HANDLE) sock,
                             iocp,
                             (ULONG_PTR) sock,
                             0) == ((void*)0)) {
    goto error;
  }

  return sock;

 error:
  closesocket(sock);
  return INVALID_SOCKET;
}
