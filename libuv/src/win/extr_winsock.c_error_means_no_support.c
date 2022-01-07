
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ WSAEAFNOSUPPORT ;
 scalar_t__ WSAEPFNOSUPPORT ;
 scalar_t__ WSAEPROTONOSUPPORT ;
 scalar_t__ WSAESOCKTNOSUPPORT ;

__attribute__((used)) static int error_means_no_support(DWORD error) {
  return error == WSAEPROTONOSUPPORT || error == WSAESOCKTNOSUPPORT ||
         error == WSAEPFNOSUPPORT || error == WSAEAFNOSUPPORT;
}
