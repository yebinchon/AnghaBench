
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guid ;
typedef int SOCKET ;
typedef int GUID ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int SIO_GET_EXTENSION_FUNCTION_POINTER ;
 int SOCKET_ERROR ;
 int TRUE ;
 int WSAIoctl (int ,int ,int *,int,void*,int,int *,int *,int *) ;

__attribute__((used)) static BOOL uv_get_extension_function(SOCKET socket, GUID guid,
    void **target) {
  int result;
  DWORD bytes;

  result = WSAIoctl(socket,
                    SIO_GET_EXTENSION_FUNCTION_POINTER,
                    &guid,
                    sizeof(guid),
                    (void*)target,
                    sizeof(*target),
                    &bytes,
                    ((void*)0),
                    ((void*)0));

  if (result == SOCKET_ERROR) {
    *target = ((void*)0);
    return FALSE;
  } else {
    return TRUE;
  }
}
