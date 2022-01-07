
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* WORD ;
struct TYPE_4__ {int dwOSVersionInfoSize; void* wServicePackMinor; void* wServicePackMajor; void* dwMinorVersion; void* dwMajorVersion; } ;
typedef TYPE_1__ OSVERSIONINFOEX ;
typedef int DWORDLONG ;
typedef void* DWORD ;


 int VER_GREATER_EQUAL ;
 int VER_MAJORVERSION ;
 int VER_MINORVERSION ;
 int VER_SERVICEPACKMAJOR ;
 int VER_SERVICEPACKMINOR ;
 int VER_SET_CONDITION (int ,int,int) ;
 scalar_t__ VerifyVersionInfo (TYPE_1__*,int,int ) ;
 int ZeroMemory (TYPE_1__*,int) ;

__attribute__((used)) static int is_windows_version_or_greater(DWORD os_major,
                                         DWORD os_minor,
                                         WORD service_pack_major,
                                         WORD service_pack_minor) {
  OSVERSIONINFOEX osvi;
  DWORDLONG condition_mask = 0;
  int op = VER_GREATER_EQUAL;


  ZeroMemory(&osvi, sizeof(OSVERSIONINFOEX));
  osvi.dwOSVersionInfoSize = sizeof(OSVERSIONINFOEX);
  osvi.dwMajorVersion = os_major;
  osvi.dwMinorVersion = os_minor;
  osvi.wServicePackMajor = service_pack_major;
  osvi.wServicePackMinor = service_pack_minor;


  VER_SET_CONDITION(condition_mask, VER_MAJORVERSION, op);
  VER_SET_CONDITION(condition_mask, VER_MINORVERSION, op);
  VER_SET_CONDITION(condition_mask, VER_SERVICEPACKMAJOR, op);
  VER_SET_CONDITION(condition_mask, VER_SERVICEPACKMINOR, op);


  return (int) VerifyVersionInfo(
    &osvi,
    VER_MAJORVERSION | VER_MINORVERSION |
    VER_SERVICEPACKMAJOR | VER_SERVICEPACKMINOR,
    condition_mask);
}
