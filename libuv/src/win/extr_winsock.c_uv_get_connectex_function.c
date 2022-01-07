
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET ;
typedef int LPFN_CONNECTEX ;
typedef int GUID ;
typedef int BOOL ;


 int WSAID_CONNECTEX ;
 int uv_get_extension_function (int ,int const,void**) ;

BOOL uv_get_connectex_function(SOCKET socket, LPFN_CONNECTEX* target) {
  const GUID wsaid_connectex = WSAID_CONNECTEX;
  return uv_get_extension_function(socket, wsaid_connectex, (void**)target);
}
