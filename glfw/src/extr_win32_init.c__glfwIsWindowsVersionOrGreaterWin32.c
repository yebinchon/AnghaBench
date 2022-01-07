
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int osvi ;
typedef int WORD ;
typedef scalar_t__ ULONGLONG ;
struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {int member_0; int member_6; TYPE_1__ member_5; int member_4; int member_3; int member_2; int member_1; } ;
typedef TYPE_2__ OSVERSIONINFOEXW ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ RtlVerifyVersionInfo (TYPE_2__*,int,scalar_t__) ;
 int VER_GREATER_EQUAL ;
 int VER_MAJORVERSION ;
 int VER_MINORVERSION ;
 int VER_SERVICEPACKMAJOR ;
 scalar_t__ VerSetConditionMask (scalar_t__,int,int ) ;

BOOL _glfwIsWindowsVersionOrGreaterWin32(WORD major, WORD minor, WORD sp)
{
    OSVERSIONINFOEXW osvi = { sizeof(osvi), major, minor, 0, 0, {0}, sp };
    DWORD mask = VER_MAJORVERSION | VER_MINORVERSION | VER_SERVICEPACKMAJOR;
    ULONGLONG cond = VerSetConditionMask(0, VER_MAJORVERSION, VER_GREATER_EQUAL);
    cond = VerSetConditionMask(cond, VER_MINORVERSION, VER_GREATER_EQUAL);
    cond = VerSetConditionMask(cond, VER_SERVICEPACKMAJOR, VER_GREATER_EQUAL);



    return RtlVerifyVersionInfo(&osvi, mask, cond) == 0;
}
