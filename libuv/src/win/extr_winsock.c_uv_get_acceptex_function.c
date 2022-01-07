
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET ;
typedef int LPFN_ACCEPTEX ;
typedef int GUID ;
typedef int BOOL ;


 int WSAID_ACCEPTEX ;
 int uv_get_extension_function (int ,int const,void**) ;

BOOL uv_get_acceptex_function(SOCKET socket, LPFN_ACCEPTEX* target) {
  const GUID wsaid_acceptex = WSAID_ACCEPTEX;
  return uv_get_extension_function(socket, wsaid_acceptex, (void**)target);
}
